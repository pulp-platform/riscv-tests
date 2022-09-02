# See LICENSE for license details.

#*****************************************************************************
# pv.max.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.max.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.max.sc.h, 0x7f7e7d7c, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.max.sc.h, 0x86888688, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.max.sc.h, 0x55445544, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.max.sc.h, 0xecb6c8dd, 0xecb6be86, 0x8e6cc8dd )
  TEST_RR_OP( 6, pv.max.sc.h, 0x471e3d1e, 0x471eb117, 0x6ede3d1e )
  TEST_RR_OP( 7, pv.max.sc.h, 0x7c23a14f, 0x7c23a14f, 0xf3258602 )
  TEST_RR_OP( 8, pv.max.sc.h, 0xdbe49bdc, 0xdbe48c9f, 0x0c459bdc )
  TEST_RR_OP( 9, pv.max.sc.h, 0x19dd00b0, 0x19dd8a1d, 0x298a00b0 )
  TEST_RR_OP( 10, pv.max.sc.h, 0x0d1e0d1e, 0xb395f294, 0x3c490d1e )
  TEST_RR_OP( 11, pv.max.sc.h, 0xae45ae45, 0x9536a861, 0x5525ae45 )
  TEST_RR_OP( 12, pv.max.sc.h, 0x5d9f5d9f, 0x22848628, 0xbbc05d9f )
  TEST_RR_OP( 13, pv.max.sc.h, 0xa71030cf, 0x8bb330cf, 0x627ba710 )
  TEST_RR_OP( 14, pv.max.sc.h, 0x136e136e, 0x8e1fb102, 0x710f136e )
  TEST_RR_OP( 15, pv.max.sc.h, 0x710f710f, 0xa4be5256, 0x3c26710f )
  TEST_RR_OP( 16, pv.max.sc.h, 0x66976697, 0xd2785d48, 0xda1a6697 )
  TEST_RR_OP( 17, pv.max.sc.h, 0xe07d1b18, 0xe07d1b18, 0x6595bf30 )
  TEST_RR_OP( 18, pv.max.sc.h, 0x3a8e3901, 0x3a8e3901, 0x2ecef235 )
  TEST_RR_OP( 19, pv.max.sc.h, 0x60266026, 0x00b21b40, 0x1ff36026 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.max.sc.h, 0x79817948, 0x79819d94, 0x6f0c7948 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.max.sc.h, 0x73613b0d, 0x736101f1, 0x03b13b0d )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.max.sc.h, 0xf5ff4d42, 0xf5ff4d42, 0xc3b6a553 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.max.sc.h, 0x04e667ad, 0x04e667ad, 0x0f13d517 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.max.sc.h, 0x1b2c1b2c, 0xd0c21b2c )
  TEST_RR_SRC12_EQ_DEST( 25, pv.max.sc.h, 0x1ab61ab6, 0xd6a31ab6 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.max.sc.h, 0xffa9ffa9, 0x8b0cffa9, 0x8b0cffa9 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.max.sc.h, 0xff91f78c, 0xff91f78c, 0xff91f78c )
  TEST_RR_DEST_BYPASS( 46, 2, pv.max.sc.h, 0x1ff81ff8, 0xe7261ff8, 0xe7261ff8 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.max.sc.h, 0x254d254d, 0xfefa254d, 0xfefa254d )
  TEST_RR_DEST_BYPASS( 48, 1, pv.max.sc.h, 0xf7d2914f, 0xf7d2914f, 0xf7d2914f )
  TEST_RR_DEST_BYPASS( 49, 2, pv.max.sc.h, 0xcd03a5c1, 0xcd03a5c1, 0xcd03a5c1 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.max.sc.h, 0x21077c87, 0x21077c87, 0xdc0d9727 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.max.sc.h, 0x58345834, 0x13a2b5cd, 0x67ee5834 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.max.sc.h, 0x4cf07a59, 0x2dee7a59, 0x70004cf0 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.max.sc.h, 0x9e01b740, 0x9e01b740, 0x104c96fd )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.max.sc.h, 0x7f3d7f3d, 0x5eb02cd4, 0x5c4f7f3d )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.max.sc.h, 0x2be62be6, 0x1aa6c6db, 0xc9f92be6 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.max.sc.h, 0x02baff54, 0x02baff54, 0x8fc280d7 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.max.sc.h, 0x0094d66c, 0x0094d66c, 0x5a99d610 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.max.sc.h, 0x713a713a, 0x8a933d8e, 0x6245713a )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.max.sc.h, 0x185b185b, 0x0e8bcff3, 0x6d6e185b )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.max.sc.h, 0x0ee71b5f, 0x83431b5f, 0x2ca00ee7 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.max.sc.h, 0x4b6f4b6f, 0xa7eb958e, 0x8c554b6f )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.max.sc.h, 0x19c219c2, 0xf4f9125d, 0xaef219c2 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.max.sc.h, 0x4c9038e2, 0x4c90fca0, 0x5bda38e2 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.max.sc.h, 0x1ca6241c, 0x082a241c, 0x06d21ca6 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.max.sc.h, 0x72fb5339, 0x72fb5339, 0xa8eaac85 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.max.sc.h, 0x30cf30cf, 0xe99a1661, 0xbc9230cf )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.max.sc.h, 0x64a264a2, 0x4f398720, 0x464464a2 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.max.sc.h, 0x2a472a47, 0xd76d2a47 )
  TEST_RR_ZEROSRC1( 51, pv.max.sc.h, 0x00000000, 0x2711f065 )
  
  TEST_RR_ZEROSRC2( 52, pv.max.sc.h, 0x327f3070, 0x327f3070 )
  TEST_RR_ZEROSRC2( 53, pv.max.sc.h, 0x7d9f20d2, 0x7d9f20d2 )
  
  TEST_RR_ZEROSRC12( 54, pv.max.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.max.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.max.sc.h, 0x148c9b8c, 0x3bf70457 )
  TEST_RR_ZERODEST( 57, pv.max.sc.h, 0xdaed86cd, 0x46e9ee5a )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
