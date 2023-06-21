# See LICENSE for license details.

#*****************************************************************************
# pv.avgu.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.avgu.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.avgu.sc.h, 0x7c7b7b7a, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.avgu.sc.h, 0x2aaa3bbb, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.avgu.sc.h, 0x2d214da9, 0xe879298a, 0x296e71c9 )
  TEST_RR_OP( 5, pv.avgu.sc.h, 0x30432a00, 0x193d0cb7, 0x9c01474a )
  TEST_RR_OP( 6, pv.avgu.sc.h, 0x158c016d, 0xcd35a4f6, 0x17db5de4 )
  TEST_RR_OP( 7, pv.avgu.sc.h, 0x54492fd6, 0xed47a462, 0x2c65bb4b )
  TEST_RR_OP( 8, pv.avgu.sc.h, 0x118677ec, 0x2b79f844, 0x8fd7f794 )
  TEST_RR_OP( 9, pv.avgu.sc.h, 0x3d4b6767, 0x1c3a7072, 0x8e325e5d )
  TEST_RR_OP( 10, pv.avgu.sc.h, 0x34ab7064, 0xece36455, 0x73c07c73 )
  TEST_RR_OP( 11, pv.avgu.sc.h, 0x7a1b2148, 0x9ce7eb41, 0xfffb574f )
  TEST_RR_OP( 12, pv.avgu.sc.h, 0x3a446dd5, 0xa8c80fea, 0x3827cbc0 )
  TEST_RR_OP( 13, pv.avgu.sc.h, 0x2754025d, 0xffa2b5b3, 0x91054f07 )
  TEST_RR_OP( 14, pv.avgu.sc.h, 0x4d9f7814, 0x07e95cd3, 0xeba79355 )
  TEST_RR_OP( 15, pv.avgu.sc.h, 0x73a13324, 0xf1507055, 0x8bcff5f3 )
  TEST_RR_OP( 16, pv.avgu.sc.h, 0x0d425ba0, 0xad0649c2, 0x171f6d7e )
  TEST_RR_OP( 17, pv.avgu.sc.h, 0x23083287, 0xd205f103, 0xc47b740b )
  TEST_RR_OP( 18, pv.avgu.sc.h, 0x3d1c2580, 0xff59d022, 0x6c0d7adf )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.avgu.sc.h, 0x76451893, 0x8eecd388, 0x8be45d9f )
  TEST_RR_SRC1_EQ_DEST( 20, pv.avgu.sc.h, 0x76be3366, 0xe78260d2, 0x9a1105fa )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.avgu.sc.h, 0x66374b5f, 0x80b34b02, 0xf3344bbc )
  TEST_RR_SRC2_EQ_DEST( 22, pv.avgu.sc.h, 0x667d120e, 0x7ab2d1d4, 0x5ed85248 )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.avgu.sc.h, 0x79c163d5, 0x8fad63d5 )
  TEST_RR_SRC12_EQ_DEST( 24, pv.avgu.sc.h, 0x12f76c8c, 0xb9636c8c )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.avgu.sc.h, 0x08d30724, 0x0a820724, 0x0a820724 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.avgu.sc.h, 0x6ed76661, 0xf74ee661, 0xf74ee661 )
  TEST_RR_DEST_BYPASS( 45, 2, pv.avgu.sc.h, 0x48621989, 0xf73b9989, 0xf73b9989 )
  TEST_RR_DEST_BYPASS( 46, 0, pv.avgu.sc.h, 0x3af11f3e, 0xd6a59f3e, 0xd6a59f3e )
  TEST_RR_DEST_BYPASS( 47, 1, pv.avgu.sc.h, 0x5e0d6e31, 0x4dea6e31, 0x4dea6e31 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.avgu.sc.h, 0x5c563d82, 0x7b2b3d82, 0x7b2b3d82 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.avgu.sc.h, 0x20504907, 0x5165a2d3, 0xaff8ef3c )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.avgu.sc.h, 0x2b7e1ba4, 0xc913a95f, 0x68ff8de9 )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.avgu.sc.h, 0x0a2d000b, 0x6ed35a90, 0x5885a587 )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.avgu.sc.h, 0x495a0dd0, 0x755dfe48, 0x13f51d58 )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.avgu.sc.h, 0x62074762, 0xd92aa3e0, 0x4431eae5 )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.avgu.sc.h, 0x58f44be4, 0x27640d44, 0x04528a84 )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.avgu.sc.h, 0x2682098b, 0x91c657d9, 0x6c47bb3e )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.avgu.sc.h, 0x41204892, 0x326f4153, 0x67334fd1 )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.avgu.sc.h, 0x3bee6486, 0xe1b732e6, 0xf4e89626 )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.avgu.sc.h, 0x3f191a44, 0xc08776dd, 0x1f9bbdab )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.avgu.sc.h, 0x5d4111a4, 0x97f400b9, 0x0ced228f )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.avgu.sc.h, 0x73c06615, 0x612445ce, 0x818f865c )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.avgu.sc.h, 0x61ca1fe2, 0x31e0ae10, 0x91ac91b5 )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.avgu.sc.h, 0x4ac101b2, 0x61accf8e, 0x34f533d6 )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.avgu.sc.h, 0x12e82ba2, 0x39656ada, 0xd44bec6b )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.avgu.sc.h, 0x78db4d30, 0x1ce1c58b, 0xa1b2d4d6 )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.avgu.sc.h, 0x6255529d, 0x1a5bfaea, 0x3bf9aa50 )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.avgu.sc.h, 0x5b057298, 0x66ed9612, 0x377a4f1e )
  
  

  TEST_RR_ZEROSRC1( 49, pv.avgu.sc.h, 0x3fb93fb9, 0x878c7f73 )
  TEST_RR_ZEROSRC1( 50, pv.avgu.sc.h, 0x00250025, 0x04e5004a )
  
  TEST_RR_ZEROSRC2( 51, pv.avgu.sc.h, 0x43c11e7e, 0x87823cfc )
  TEST_RR_ZEROSRC2( 52, pv.avgu.sc.h, 0x58b16843, 0xb163d087 )
  
  TEST_RR_ZEROSRC12( 53, pv.avgu.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.avgu.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.avgu.sc.h, 0x36c2b846, 0x662c7013 )
  TEST_RR_ZERODEST( 56, pv.avgu.sc.h, 0xaa0211a1, 0x3334e584 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
