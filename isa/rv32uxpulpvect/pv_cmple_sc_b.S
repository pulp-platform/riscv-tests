# See LICENSE for license details.

#*****************************************************************************
# pv.cmple.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.cmple.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmple.sc.b, 0x01010101, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmple.sc.b, 0x01010101, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmple.sc.b, 0x01010100, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmple.sc.b, 0x01010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmple.sc.b, 0x01010100, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmple.sc.b, 0x00000000, 0x5c29cbf8, 0x4de161c4 )
  TEST_RR_OP( 8, pv.cmple.sc.b, 0x01010001, 0x818b2cef, 0xde08e611 )
  TEST_RR_OP( 9, pv.cmple.sc.b, 0x01010100, 0x87f0b558, 0x3c4f7f1b )
  TEST_RR_OP( 10, pv.cmple.sc.b, 0x01010101, 0xb6d02a90, 0x6542e654 )
  TEST_RR_OP( 11, pv.cmple.sc.b, 0x01010100, 0xe9ec9677, 0xc7b4831b )
  TEST_RR_OP( 12, pv.cmple.sc.b, 0x00000001, 0xfcc123a6, 0x6d26dabd )
  TEST_RR_OP( 13, pv.cmple.sc.b, 0x00000000, 0x5d990933, 0xaeedb087 )
  TEST_RR_OP( 14, pv.cmple.sc.b, 0x00000001, 0xd155ecaf, 0x006409b2 )
  TEST_RR_OP( 15, pv.cmple.sc.b, 0x01010101, 0xdde18038, 0xdaeae74a )
  TEST_RR_OP( 16, pv.cmple.sc.b, 0x01010101, 0xd5d5085a, 0x3fdd436a )
  TEST_RR_OP( 17, pv.cmple.sc.b, 0x00000100, 0x323c9279, 0xb36ccb03 )
  TEST_RR_OP( 18, pv.cmple.sc.b, 0x01000000, 0x8b714352, 0xc718079d )
  TEST_RR_OP( 19, pv.cmple.sc.b, 0x00010001, 0x36874884, 0x4d20229c )
  TEST_RR_OP( 20, pv.cmple.sc.b, 0x01010101, 0xf7d9751b, 0x8231ec75 )
  TEST_RR_OP( 21, pv.cmple.sc.b, 0x00000000, 0xd05bd0b9, 0x68980b94 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmple.sc.b, 0x01010000, 0xf8bc2d6f, 0x732f7f24 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmple.sc.b, 0x01000001, 0xb84b5e0e, 0x3274b048 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmple.sc.b, 0x01010001, 0xba9a65e3, 0x97c542f0 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmple.sc.b, 0x01010100, 0x0db61274, 0x19fa904e )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmple.sc.b, 0x00000001, 0x64ff01e4 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmple.sc.b, 0x01000101, 0xe575fd71 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmple.sc.b, 0x00000001, 0x52823481, 0x52823481 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmple.sc.b, 0x00000001, 0xa6b72b85, 0xa6b72b85 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmple.sc.b, 0x01010101, 0x9bbed509, 0x9bbed509 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmple.sc.b, 0x01010101, 0x48c9f853, 0x48c9f853 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmple.sc.b, 0x01000001, 0xe56e481d, 0xe56e481d )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmple.sc.b, 0x00000101, 0x5a789b18, 0x5a789b18 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmple.sc.b, 0x01010001, 0x68f7701e, 0xe8c62d6b )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmple.sc.b, 0x00010000, 0x26c476f6, 0x7e3271ee )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmple.sc.b, 0x00000100, 0x6a24cf65, 0xc0ed31e9 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmple.sc.b, 0x01010001, 0x3dd45c05, 0x24ac1a4a )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmple.sc.b, 0x01010001, 0x25b47f08, 0x24003a67 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmple.sc.b, 0x01000001, 0x994565ff, 0xa6fdbc32 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmple.sc.b, 0x00000000, 0xa6ee1923, 0xd5ca728b )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmple.sc.b, 0x01010101, 0xef1f2949, 0xd78ac066 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmple.sc.b, 0x01010101, 0x8a1075ca, 0x90ea3b76 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmple.sc.b, 0x00010101, 0x699197ae, 0x88da20e0 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmple.sc.b, 0x00000000, 0x36606f34, 0x49b677da )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmple.sc.b, 0x00010001, 0x33b63bd5, 0x52c6eef6 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmple.sc.b, 0x01010101, 0x5e48c9dc, 0xd85ecd6d )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmple.sc.b, 0x00000000, 0x2def5003, 0xb046c8aa )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmple.sc.b, 0x00010000, 0x66804de6, 0xe2a2efcb )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmple.sc.b, 0x00010001, 0x0fd74181, 0x39da1bd9 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmple.sc.b, 0x01010101, 0x89edae07, 0x99408a47 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmple.sc.b, 0x00000101, 0x6572a1a0, 0x12cae20b )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmple.sc.b, 0x01010101, 0xf231bc37 )
  TEST_RR_ZEROSRC1( 53, pv.cmple.sc.b, 0x00000000, 0x24b43bfa )
  
  TEST_RR_ZEROSRC2( 54, pv.cmple.sc.b, 0x01010100, 0x9491e45c )
  TEST_RR_ZEROSRC2( 55, pv.cmple.sc.b, 0x01010101, 0xeaedebe4 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmple.sc.b, 0x01010101 )
  TEST_RR_ZEROSRC12( 57, pv.cmple.sc.b, 0x01010101 )
  
  TEST_RR_ZERODEST( 58, pv.cmple.sc.b, 0xc64bc9f1, 0x09e7bd9e )
  TEST_RR_ZERODEST( 59, pv.cmple.sc.b, 0xa6264cae, 0x041291f9 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
