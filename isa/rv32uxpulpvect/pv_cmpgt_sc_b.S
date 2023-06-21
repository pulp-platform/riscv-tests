# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgt.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpgt.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgt.sc.b, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgt.sc.b, 0x00000000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgt.sc.b, 0x00000001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgt.sc.b, 0x00000101, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgt.sc.b, 0x00000001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgt.sc.b, 0x00000001, 0x91f1a646, 0x0616b90d )
  TEST_RR_OP( 8, pv.cmpgt.sc.b, 0x01010101, 0x434df923, 0x5e5cbace )
  TEST_RR_OP( 9, pv.cmpgt.sc.b, 0x00000000, 0xbc0bb1e1, 0x3ea44c37 )
  TEST_RR_OP( 10, pv.cmpgt.sc.b, 0x00000000, 0xa1e0b2f1, 0x4b404064 )
  TEST_RR_OP( 11, pv.cmpgt.sc.b, 0x01010100, 0x59cc51bb, 0xfe7c2ec7 )
  TEST_RR_OP( 12, pv.cmpgt.sc.b, 0x00010001, 0xb914c70a, 0x3f664502 )
  TEST_RR_OP( 13, pv.cmpgt.sc.b, 0x01010101, 0xdc1575f0, 0x327cb6bd )
  TEST_RR_OP( 14, pv.cmpgt.sc.b, 0x01010001, 0x6d74a1ca, 0x2a1733bc )
  TEST_RR_OP( 15, pv.cmpgt.sc.b, 0x01010001, 0x58fead76, 0xc8e761e0 )
  TEST_RR_OP( 16, pv.cmpgt.sc.b, 0x00010000, 0x964e998a, 0x4ff216f0 )
  TEST_RR_OP( 17, pv.cmpgt.sc.b, 0x00000101, 0xa8a0fe4e, 0x1b58b8cd )
  TEST_RR_OP( 18, pv.cmpgt.sc.b, 0x00000100, 0x82983485, 0xc3c9b0da )
  TEST_RR_OP( 19, pv.cmpgt.sc.b, 0x00010101, 0xc4517b64, 0xffd8dcca )
  TEST_RR_OP( 20, pv.cmpgt.sc.b, 0x01000100, 0x318137c3, 0xf62c7bd8 )
  TEST_RR_OP( 21, pv.cmpgt.sc.b, 0x01010101, 0xe936caee, 0xcb16faac )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgt.sc.b, 0x01000100, 0x6cf67df9, 0x82548153 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgt.sc.b, 0x00000001, 0x3932be76, 0x2a51bf45 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgt.sc.b, 0x00000000, 0xd91caab8, 0x6607727a )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgt.sc.b, 0x01000001, 0x4fc5c914, 0xaed45902 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgt.sc.b, 0x00010100, 0x8825508a )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgt.sc.b, 0x01010100, 0x4fe15692 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgt.sc.b, 0x00000000, 0xbade4179, 0xbade4179 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgt.sc.b, 0x01010100, 0xf27434e3, 0xf27434e3 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgt.sc.b, 0x00000000, 0xf54d4d65, 0xf54d4d65 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgt.sc.b, 0x00010100, 0x836743e4, 0x836743e4 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgt.sc.b, 0x00000100, 0x23e57560, 0x23e57560 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgt.sc.b, 0x00000000, 0xa9df8ae8, 0xa9df8ae8 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgt.sc.b, 0x00000000, 0xafbb85fc, 0x6e985b5a )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgt.sc.b, 0x00000000, 0xead8d80f, 0xbf856125 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgt.sc.b, 0x00010000, 0xddf5da96, 0x402d58e8 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgt.sc.b, 0x01010101, 0x0afc2d2e, 0xb59886d3 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgt.sc.b, 0x00000000, 0xeaf584e5, 0x9726a97a )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgt.sc.b, 0x01010100, 0x227404ce, 0xa57ea502 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgt.sc.b, 0x00000000, 0x485d5541, 0x21154269 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgt.sc.b, 0x01010001, 0x3a2ecd15, 0x610dffdd )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgt.sc.b, 0x01010001, 0x7f5d855b, 0xd92afada )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgt.sc.b, 0x00000100, 0xfbf97755, 0x816e975b )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgt.sc.b, 0x01000100, 0x65bb6cf3, 0x58069240 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgt.sc.b, 0x00000101, 0x9e305579, 0x9447b43e )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgt.sc.b, 0x00000000, 0x6e44f8d9, 0x3593457e )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgt.sc.b, 0x01010101, 0x70082eeb, 0x83612b93 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgt.sc.b, 0x00010100, 0x8f355bad, 0x186ccbb0 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgt.sc.b, 0x01000001, 0x49a4a2ef, 0x82a029af )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgt.sc.b, 0x00010100, 0xbf635e31, 0x2c83ff58 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgt.sc.b, 0x00010100, 0x80f00281, 0xd237349e )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgt.sc.b, 0x00000000, 0x7a06a506 )
  TEST_RR_ZEROSRC1( 53, pv.cmpgt.sc.b, 0x01010101, 0x9afafcb8 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgt.sc.b, 0x01000001, 0x61b6fe54 )
  TEST_RR_ZEROSRC2( 55, pv.cmpgt.sc.b, 0x00000000, 0xafdac397 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgt.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgt.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgt.sc.b, 0xd69b962b, 0x94759fde )
  TEST_RR_ZERODEST( 59, pv.cmpgt.sc.b, 0x0ad6bdf7, 0xca495ee6 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
