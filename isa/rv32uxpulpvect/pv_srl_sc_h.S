# See LICENSE for license details.

#*****************************************************************************
# pv.srl.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.srl.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.srl.sc.h, 0x00010001, 0x81818181, 0xaabbcdff )
  TEST_RR_OP( 3, pv.srl.sc.h, 0x81818181, 0x81818181, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.srl.sc.h, 0x40c040c0, 0x81818181, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.srl.sc.h, 0x00040002, 0x83f04f58, 0xad191e9d )
  TEST_RR_OP( 6, pv.srl.sc.h, 0xb4da4933, 0xb4da4933, 0x058c5f60 )
  TEST_RR_OP( 7, pv.srl.sc.h, 0x00120013, 0x96c499a3, 0x1e9fbd9b )
  TEST_RR_OP( 8, pv.srl.sc.h, 0x02bb0013, 0xaec404e7, 0xa7332936 )
  TEST_RR_OP( 9, pv.srl.sc.h, 0x2afd4c07, 0x55fa980f, 0x0a7db081 )
  TEST_RR_OP( 10, pv.srl.sc.h, 0x0cf955dc, 0x19f3abb8, 0xe5306dc1 )
  TEST_RR_OP( 11, pv.srl.sc.h, 0x0035001b, 0xd5246f2c, 0x0cf31f2a )
  TEST_RR_OP( 12, pv.srl.sc.h, 0x0004000b, 0x23c05918, 0x435f6dab )
  TEST_RR_OP( 13, pv.srl.sc.h, 0x00010000, 0x53cd02fa, 0x815af6de )
  TEST_RR_OP( 14, pv.srl.sc.h, 0x62581970, 0xc4b032e0, 0x9debb371 )
  TEST_RR_OP( 15, pv.srl.sc.h, 0x009700d5, 0x25c8356f, 0xb60077f6 )
  TEST_RR_OP( 16, pv.srl.sc.h, 0x00060003, 0xd4ff7a40, 0xdee4b66d )
  TEST_RR_OP( 17, pv.srl.sc.h, 0x0009000e, 0x4de270c9, 0xea1ffa3b )
  TEST_RR_OP( 18, pv.srl.sc.h, 0x006300f3, 0x6331f32b, 0x984bd428 )
  TEST_RR_OP( 19, pv.srl.sc.h, 0x03920133, 0xe4a04ccf, 0x71166366 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.srl.sc.h, 0x00120014, 0x95a1a196, 0x3134f05b )
  TEST_RR_SRC1_EQ_DEST( 21, pv.srl.sc.h, 0x0047008f, 0x475a8f31, 0x9ef6d4f8 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.srl.sc.h, 0x00740170, 0x3a0bb870, 0x1d0e08d7 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.srl.sc.h, 0x1213130e, 0x909b9875, 0x39d9a853 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.srl.sc.h, 0x000700ac, 0x03cd5627 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.srl.sc.h, 0x03110f2e, 0x188d7973 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.srl.sc.h, 0x001b0014, 0x371c29e9, 0x371c29e9 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.srl.sc.h, 0x23d33a90, 0x47a67521, 0x47a67521 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.srl.sc.h, 0x000c000f, 0xc6eaf42c, 0xc6eaf42c )
  TEST_RR_DEST_BYPASS( 47, 0, pv.srl.sc.h, 0x0029001e, 0xa6f1789a, 0xa6f1789a )
  TEST_RR_DEST_BYPASS( 48, 1, pv.srl.sc.h, 0x00010000, 0x8a314f7f, 0x8a314f7f )
  TEST_RR_DEST_BYPASS( 49, 2, pv.srl.sc.h, 0x00680071, 0xd0efe339, 0xd0efe339 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.srl.sc.h, 0x00010000, 0x663c27cf, 0x13eaa77e )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.srl.sc.h, 0x01020048, 0x40b9122d, 0x06332146 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.srl.sc.h, 0x00110014, 0x4695506d, 0x39e0d97a )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.srl.sc.h, 0x04ca1b95, 0x2656dca8, 0xb42cf953 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.srl.sc.h, 0x0dce161c, 0x6e76b0e7, 0x84069d33 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.srl.sc.h, 0x06b9068d, 0xd72ad1b7, 0x5e448325 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.srl.sc.h, 0x00f1036f, 0x3c67dbcd, 0x4d9525d6 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.srl.sc.h, 0x00030004, 0x3a2a4264, 0x45b9b91c )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.srl.sc.h, 0x0010007f, 0x08583f9c, 0xb3c466d7 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.srl.sc.h, 0x00080000, 0x434b061b, 0xec6ed4fb )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.srl.sc.h, 0x00010000, 0x84ba0888, 0x85d652cf )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.srl.sc.h, 0x00040006, 0x868dd637, 0xc0258b4d )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.srl.sc.h, 0x033600ae, 0xcdb12bb0, 0x37c98d26 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.srl.sc.h, 0x00030001, 0xf0bf715f, 0x1bd8d93e )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.srl.sc.h, 0x11a73a33, 0x469ce8cd, 0x883b2b02 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.srl.sc.h, 0x001b0017, 0xddbebd8c, 0x603752bb )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.srl.sc.h, 0x002e0009, 0xb933253a, 0x9195097a )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.srl.sc.h, 0x01fb0040, 0xfdf5202d, 0x28bc0ea7 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.srl.sc.h, 0x00000000, 0xe679a720 )
  TEST_RR_ZEROSRC1( 51, pv.srl.sc.h, 0x00000000, 0xde07406c )
  
  TEST_RR_ZEROSRC2( 52, pv.srl.sc.h, 0x952ae8c2, 0x952ae8c2 )
  TEST_RR_ZEROSRC2( 53, pv.srl.sc.h, 0xef59c541, 0xef59c541 )
  
  TEST_RR_ZEROSRC12( 54, pv.srl.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.srl.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.srl.sc.h, 0xc9471282, 0x5c128deb )
  TEST_RR_ZERODEST( 57, pv.srl.sc.h, 0x0e60df89, 0xf8a6c7a0 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
