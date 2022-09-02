# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgt.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpgt.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgt.h, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgt.h, 0x00010001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgt.h, 0x00010001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgt.h, 0x00000001, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgt.h, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgt.h, 0x00010001, 0x263208ea, 0x9a1307d6 )
  TEST_RR_OP( 8, pv.cmpgt.h, 0x00010000, 0x30586ffd, 0xae157ec2 )
  TEST_RR_OP( 9, pv.cmpgt.h, 0x00000001, 0xaeea36f6, 0x11ab1889 )
  TEST_RR_OP( 10, pv.cmpgt.h, 0x00000000, 0x01cad7e8, 0x3b17ddd9 )
  TEST_RR_OP( 11, pv.cmpgt.h, 0x00010000, 0x5ab8ac13, 0x337a4d5e )
  TEST_RR_OP( 12, pv.cmpgt.h, 0x00010000, 0x5a17fc58, 0x88785064 )
  TEST_RR_OP( 13, pv.cmpgt.h, 0x00010001, 0xf64c762b, 0xd7dead25 )
  TEST_RR_OP( 14, pv.cmpgt.h, 0x00010001, 0xc2b554ea, 0x8f29250f )
  TEST_RR_OP( 15, pv.cmpgt.h, 0x00010000, 0xbe86bd41, 0xb530be74 )
  TEST_RR_OP( 16, pv.cmpgt.h, 0x00010000, 0x634b9d0f, 0x27842fe1 )
  TEST_RR_OP( 17, pv.cmpgt.h, 0x00010000, 0x0f269e26, 0x96cd47d8 )
  TEST_RR_OP( 18, pv.cmpgt.h, 0x00000001, 0x05b56f7b, 0x4dd6a7de )
  TEST_RR_OP( 19, pv.cmpgt.h, 0x00000001, 0x4e580d4f, 0x618de108 )
  TEST_RR_OP( 20, pv.cmpgt.h, 0x00010001, 0xa1e7641f, 0x8b072820 )
  TEST_RR_OP( 21, pv.cmpgt.h, 0x00000001, 0xa4ac3582, 0xdab30b30 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgt.h, 0x00000001, 0x47687ff8, 0x5ab8929d )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgt.h, 0x00010001, 0x26db1dae, 0xbbe6b43e )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgt.h, 0x00000000, 0xb6b714b2, 0x5b1c2f47 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgt.h, 0x00000000, 0xa961cde5, 0x52ec3b80 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgt.h, 0x00000000, 0x74dd4d99 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgt.h, 0x00000000, 0xba1cd0de )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgt.h, 0x00000000, 0xb7c8df2c, 0xb7c8df2c )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgt.h, 0x00000000, 0x187a071c, 0x187a071c )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgt.h, 0x00000000, 0x8c1bdadf, 0x8c1bdadf )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgt.h, 0x00000000, 0x15c62fee, 0x15c62fee )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgt.h, 0x00000000, 0x4738febc, 0x4738febc )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgt.h, 0x00000000, 0x0ee8dd06, 0x0ee8dd06 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgt.h, 0x00010000, 0x0fdee3b6, 0x8efd1205 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgt.h, 0x00000000, 0xd352bd9d, 0x0d61f219 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgt.h, 0x00010000, 0x2bc1fb9d, 0xc5da3a1c )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgt.h, 0x00010000, 0x59cb1e5d, 0x3c95699c )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgt.h, 0x00000001, 0x9836b4d1, 0x4a1fa7a4 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgt.h, 0x00010001, 0x589d1511, 0x3a4ad8c8 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgt.h, 0x00010001, 0xe5bd51af, 0xd37b3963 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgt.h, 0x00010000, 0x14c64aac, 0xbe4678dc )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgt.h, 0x00000001, 0xd14e61be, 0xf1c64a22 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgt.h, 0x00000001, 0x96d27482, 0xe37df258 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgt.h, 0x00010001, 0x36ff4f1e, 0xe9d741a8 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgt.h, 0x00000001, 0xd9ea37a7, 0x34baab94 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgt.h, 0x00010000, 0x5b18d65d, 0x28e96e04 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgt.h, 0x00010000, 0x75f9e913, 0x4b914748 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgt.h, 0x00010000, 0x251a0843, 0x92ca4ed7 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgt.h, 0x00000001, 0xc358428f, 0xde29a54e )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgt.h, 0x00000000, 0xdb4196a3, 0x6382c68a )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgt.h, 0x00010000, 0x4875f2f2, 0x35542af5 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgt.h, 0x00000000, 0x01bc0e73 )
  TEST_RR_ZEROSRC1( 53, pv.cmpgt.h, 0x00000000, 0x5ba0324c )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgt.h, 0x00000001, 0x98152f8b )
  TEST_RR_ZEROSRC2( 55, pv.cmpgt.h, 0x00000001, 0xfd810571 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgt.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgt.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgt.h, 0xbe36530e, 0xe0edb49a )
  TEST_RR_ZERODEST( 59, pv.cmpgt.h, 0x5be8efa8, 0x3a07fe10 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
