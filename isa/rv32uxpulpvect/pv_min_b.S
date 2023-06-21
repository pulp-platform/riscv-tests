# See LICENSE for license details.

#*****************************************************************************
# pv.min.b
#-----------------------------------------------------------------------------
#
# Test pv.min.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.min.b, 0x7b7a7978, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.min.b, 0x80818284, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.min.b, 0x00112233, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.min.b, 0x3501d59e, 0x3501273d, 0x6735d59e )
  TEST_RR_OP( 6, pv.min.b, 0xd2b7fa90, 0xd27a1690, 0xe5b7fa42 )
  TEST_RR_OP( 7, pv.min.b, 0x119c1f93, 0x3f9c2b5c, 0x11121f93 )
  TEST_RR_OP( 8, pv.min.b, 0xcdbfc2ec, 0xcdcac2ef, 0x22bf6cec )
  TEST_RR_OP( 9, pv.min.b, 0xc19ecfde, 0xde36cf45, 0xc19e4fde )
  TEST_RR_OP( 10, pv.min.b, 0x8cf79711, 0xcef75e77, 0x8c699711 )
  TEST_RR_OP( 11, pv.min.b, 0xe3f4eedf, 0xe3f4eedf, 0x6a086a06 )
  TEST_RR_OP( 12, pv.min.b, 0x4b1cc98b, 0x781cce6b, 0x4b5ac98b )
  TEST_RR_OP( 13, pv.min.b, 0xad86bbf6, 0xad86bbf6, 0x26fe7676 )
  TEST_RR_OP( 14, pv.min.b, 0x9be3ebba, 0x0b3febba, 0x9be37a69 )
  TEST_RR_OP( 15, pv.min.b, 0x1b0ae7d4, 0x2750e7d4, 0x1b0a3068 )
  TEST_RR_OP( 16, pv.min.b, 0xc1b28fd3, 0xe9518f41, 0xc1b239d3 )
  TEST_RR_OP( 17, pv.min.b, 0x49de86bc, 0x49f38648, 0x6dde94bc )
  TEST_RR_OP( 18, pv.min.b, 0x91f2f182, 0xa0f2f182, 0x91622bdf )
  TEST_RR_OP( 19, pv.min.b, 0xa60696e0, 0xa606c9e0, 0x3f73965b )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.min.b, 0x8794e7ae, 0x87946768, 0xa246e7ae )
  TEST_RR_SRC1_EQ_DEST( 21, pv.min.b, 0xa1b88c2e, 0x5bb88c58, 0xa13d5b2e )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.min.b, 0x25bdb2b4, 0x4abd050d, 0x2533b2b4 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.min.b, 0xccd1c218, 0x6f67d618, 0xccd1c275 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.min.b, 0xcb89632f, 0xcb89632f )
  TEST_RR_SRC12_EQ_DEST( 25, pv.min.b, 0xf70c15e0, 0xf70c15e0 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.min.b, 0x794d2cd1, 0x794d2cd1, 0x794d2cd1 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.min.b, 0x23cc026b, 0x23cc026b, 0x23cc026b )
  TEST_RR_DEST_BYPASS( 46, 2, pv.min.b, 0x9d3900f7, 0x9d3900f7, 0x9d3900f7 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.min.b, 0x89a83d9a, 0x89a83d9a, 0x89a83d9a )
  TEST_RR_DEST_BYPASS( 48, 1, pv.min.b, 0x14bec4a7, 0x14bec4a7, 0x14bec4a7 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.min.b, 0xcae0f25d, 0xcae0f25d, 0xcae0f25d )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.min.b, 0xbf94e801, 0xbfd51329, 0x7294e801 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.min.b, 0xc6a5d021, 0xc6463877, 0x46a5d021 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.min.b, 0x954d3347, 0x41746947, 0x954d3353 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.min.b, 0xa19992c7, 0xa1cfd779, 0x2f9992c7 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.min.b, 0x0886a7ad, 0x6957fead, 0x0886a766 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.min.b, 0x5c94370f, 0x5ca9410f, 0x72943732 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.min.b, 0xa400e602, 0xa41e6c6f, 0x5400e602 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.min.b, 0x0a9fe0cc, 0x3330e008, 0x0a9f09cc )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.min.b, 0xbe9cbc1c, 0x6d3f7f1c, 0xbe9cbc69 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.min.b, 0xdf142ca1, 0xdf4849a1, 0x54142ce7 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.min.b, 0xe71efba4, 0x111efbdb, 0xe73d12a4 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.min.b, 0x5684df99, 0x6584df99, 0x565a4ef4 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.min.b, 0x9ae2e0d4, 0x9a53e0d4, 0x5ce268d5 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.min.b, 0xaf0eb0bf, 0xbd34b0bf, 0xaf0ec2c2 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.min.b, 0xcec92d83, 0xcec92d29, 0x7e744d83 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.min.b, 0x0011e8a5, 0x0011087f, 0x5d69e8a5 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.min.b, 0x9d16e300, 0x6b73e300, 0x9d16ec69 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.min.b, 0x9e82f6c5, 0x9e1ef610, 0x008207c5 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.min.b, 0x00000000, 0x64246f1c )
  TEST_RR_ZEROSRC1( 51, pv.min.b, 0x8b000000, 0x8b377465 )
  
  TEST_RR_ZEROSRC2( 52, pv.min.b, 0x8400e5d9, 0x8432e5d9 )
  TEST_RR_ZEROSRC2( 53, pv.min.b, 0x008000bc, 0x1f8064bc )
  
  TEST_RR_ZEROSRC12( 54, pv.min.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.min.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.min.b, 0x4b7f4336, 0xc9a57d2b )
  TEST_RR_ZERODEST( 57, pv.min.b, 0x5587b04e, 0x079bf911 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
