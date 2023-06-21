# See LICENSE for license details.

#*****************************************************************************
# pv.cmpge.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpge.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpge.sc.b, 0x00000001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpge.sc.b, 0x00000001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpge.sc.b, 0x00000001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpge.sc.b, 0x00010101, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpge.sc.b, 0x00000101, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpge.sc.b, 0x01000000, 0x7c8cad36, 0xab9f5a3a )
  TEST_RR_OP( 8, pv.cmpge.sc.b, 0x01010001, 0x2b61ad7b, 0xdc1eb5be )
  TEST_RR_OP( 9, pv.cmpge.sc.b, 0x00000000, 0xf5c2b7e6, 0xa25ab472 )
  TEST_RR_OP( 10, pv.cmpge.sc.b, 0x01010101, 0x1a71f2cb, 0x2adef893 )
  TEST_RR_OP( 11, pv.cmpge.sc.b, 0x01010101, 0x90c3603e, 0x8597df87 )
  TEST_RR_OP( 12, pv.cmpge.sc.b, 0x00000101, 0x17f8403a, 0x8c624336 )
  TEST_RR_OP( 13, pv.cmpge.sc.b, 0x01010101, 0x7a737230, 0x81e2d1ea )
  TEST_RR_OP( 14, pv.cmpge.sc.b, 0x01000100, 0x5fe86813, 0xf61df644 )
  TEST_RR_OP( 15, pv.cmpge.sc.b, 0x00000001, 0xa2a4a743, 0x2ce4efcd )
  TEST_RR_OP( 16, pv.cmpge.sc.b, 0x00000100, 0xeda414ed, 0x4ff92404 )
  TEST_RR_OP( 17, pv.cmpge.sc.b, 0x00000100, 0x08204c1b, 0xf3322245 )
  TEST_RR_OP( 18, pv.cmpge.sc.b, 0x00000000, 0x73fed3fa, 0xb6aa1977 )
  TEST_RR_OP( 19, pv.cmpge.sc.b, 0x01010101, 0x5451c539, 0x28a57e9f )
  TEST_RR_OP( 20, pv.cmpge.sc.b, 0x01010101, 0x00031213, 0xbece36b5 )
  TEST_RR_OP( 21, pv.cmpge.sc.b, 0x01010000, 0x766f04a0, 0xfd2b3250 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpge.sc.b, 0x00000001, 0xc625bf67, 0x9e7ecc35 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpge.sc.b, 0x00010000, 0x9ce98fb4, 0xf506c9b9 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpge.sc.b, 0x00000000, 0xa9b63c29, 0xa0a96242 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpge.sc.b, 0x00000000, 0xcf00e8d8, 0xf4922f78 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpge.sc.b, 0x01000001, 0x6a30405b )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpge.sc.b, 0x01010101, 0x0bc01a90 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpge.sc.b, 0x00000001, 0xadd6dd0e, 0xadd6dd0e )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpge.sc.b, 0x00000101, 0x08eb2e09, 0x08eb2e09 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpge.sc.b, 0x01010001, 0x22dbabc0, 0x22dbabc0 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpge.sc.b, 0x01010101, 0xd8cc5e81, 0xd8cc5e81 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpge.sc.b, 0x00000001, 0x9a0b1a34, 0x9a0b1a34 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpge.sc.b, 0x01000001, 0x29848a9a, 0x29848a9a )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpge.sc.b, 0x01010001, 0xe3e0826a, 0xbe22c4c2 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpge.sc.b, 0x00010101, 0x87f6761d, 0xe9e3f9b7 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpge.sc.b, 0x01010101, 0x1553684b, 0x77b381e8 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpge.sc.b, 0x00010000, 0xa871d002, 0x787d8805 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpge.sc.b, 0x01010000, 0x5e7fe3d8, 0x3d49e852 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpge.sc.b, 0x01010001, 0x5047a5c2, 0x9d279fad )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpge.sc.b, 0x01000000, 0x4d10a8d1, 0xa5ed0b19 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpge.sc.b, 0x00000001, 0xdacee04c, 0xa5826a25 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpge.sc.b, 0x01010001, 0xf4209115, 0x2daef1cb )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpge.sc.b, 0x01010101, 0x51998ebd, 0x91b37d85 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpge.sc.b, 0x00010001, 0xb13de102, 0x5d12d4ec )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpge.sc.b, 0x00010101, 0x94f454ff, 0x65fb3fbb )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpge.sc.b, 0x00010101, 0xc952da20, 0xc5d93ad7 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpge.sc.b, 0x00010101, 0x855ee83b, 0x621d1799 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpge.sc.b, 0x01010101, 0x912ea8e0, 0xaaf4f291 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpge.sc.b, 0x01010101, 0xf4194003, 0x0540f588 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpge.sc.b, 0x01010101, 0x8a0169c0, 0xd33bc385 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpge.sc.b, 0x01000001, 0x4507f17a, 0xb1c34427 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpge.sc.b, 0x01010101, 0xb074d5ec )
  TEST_RR_ZEROSRC1( 53, pv.cmpge.sc.b, 0x01010101, 0x2c9157c9 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpge.sc.b, 0x00010001, 0xea21bc3e )
  TEST_RR_ZEROSRC2( 55, pv.cmpge.sc.b, 0x01010001, 0x455da67a )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpge.sc.b, 0x01010101 )
  TEST_RR_ZEROSRC12( 57, pv.cmpge.sc.b, 0x01010101 )
  
  TEST_RR_ZERODEST( 58, pv.cmpge.sc.b, 0x9e9a87ac, 0xc485ae2e )
  TEST_RR_ZERODEST( 59, pv.cmpge.sc.b, 0x45f8b710, 0x0da72d16 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
