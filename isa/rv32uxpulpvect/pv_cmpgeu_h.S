# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgeu.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpgeu.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgeu.h, 0x00010001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgeu.h, 0x00010001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgeu.h, 0x00010001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgeu.h, 0x00000001, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgeu.h, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgeu.h, 0x00010000, 0xa8660a80, 0x6fe8df1b )
  TEST_RR_OP( 8, pv.cmpgeu.h, 0x00000001, 0x0cb2f35b, 0xcf6f7a7b )
  TEST_RR_OP( 9, pv.cmpgeu.h, 0x00010001, 0xadc15a4c, 0x590e38f4 )
  TEST_RR_OP( 10, pv.cmpgeu.h, 0x00000001, 0x04569ce1, 0x0e4d71cc )
  TEST_RR_OP( 11, pv.cmpgeu.h, 0x00010001, 0xcac78b9c, 0x440b67ce )
  TEST_RR_OP( 12, pv.cmpgeu.h, 0x00000000, 0x1daa0510, 0xb68fe055 )
  TEST_RR_OP( 13, pv.cmpgeu.h, 0x00000001, 0x54a77843, 0xb6a018ba )
  TEST_RR_OP( 14, pv.cmpgeu.h, 0x00000001, 0xaaabc042, 0xd8893dde )
  TEST_RR_OP( 15, pv.cmpgeu.h, 0x00010000, 0x350ad362, 0x1f16e201 )
  TEST_RR_OP( 16, pv.cmpgeu.h, 0x00010000, 0xa7200d02, 0x231dbfbb )
  TEST_RR_OP( 17, pv.cmpgeu.h, 0x00010001, 0x5502efd7, 0x2607babf )
  TEST_RR_OP( 18, pv.cmpgeu.h, 0x00000000, 0x01cc590f, 0xd68c8863 )
  TEST_RR_OP( 19, pv.cmpgeu.h, 0x00010001, 0xbfd5e501, 0x2c095bc7 )
  TEST_RR_OP( 20, pv.cmpgeu.h, 0x00000000, 0x05023b5b, 0xa92b86d7 )
  TEST_RR_OP( 21, pv.cmpgeu.h, 0x00000000, 0x36d31123, 0xf76c603f )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgeu.h, 0x00000001, 0x6461cc47, 0x95b430de )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgeu.h, 0x00000000, 0x11cd243f, 0xc390eebe )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgeu.h, 0x00010000, 0xb60c5d98, 0x4f9cc7b2 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgeu.h, 0x00010000, 0xaefc1a3e, 0xadceabe7 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgeu.h, 0x00010001, 0x489f777d )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgeu.h, 0x00010001, 0x617fd62d )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgeu.h, 0x00010001, 0xf85830f3, 0xf85830f3 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgeu.h, 0x00010001, 0xdfbc1bac, 0xdfbc1bac )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgeu.h, 0x00010001, 0x4227f099, 0x4227f099 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgeu.h, 0x00010001, 0x0eee4352, 0x0eee4352 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgeu.h, 0x00010001, 0x86360e0c, 0x86360e0c )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgeu.h, 0x00010001, 0xe0b89bd7, 0xe0b89bd7 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgeu.h, 0x00010001, 0x70ac7d50, 0x31c47cd5 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgeu.h, 0x00010001, 0xc2a0dd59, 0x80750b4a )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgeu.h, 0x00000001, 0x9f0cfe33, 0xa59f0a27 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgeu.h, 0x00000000, 0xbc2f0521, 0xcf72453c )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgeu.h, 0x00010001, 0xb475db2e, 0x695d3a5e )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgeu.h, 0x00010001, 0x398f9256, 0x0de40be2 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgeu.h, 0x00010001, 0x9001fd42, 0x700af99f )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgeu.h, 0x00010001, 0xcf7bf041, 0x9f5d7ede )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgeu.h, 0x00010001, 0x7a2cb82e, 0x402cb074 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgeu.h, 0x00010000, 0xb3ce7857, 0x89aae787 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgeu.h, 0x00010000, 0xc6711643, 0x0ce4d56e )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgeu.h, 0x00010001, 0xb022f675, 0x0d82d9a6 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgeu.h, 0x00010000, 0xa8672054, 0x01ef92dc )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgeu.h, 0x00010001, 0x622f5147, 0x42e702ed )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgeu.h, 0x00000001, 0x0e4cefdb, 0x1ccca52c )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgeu.h, 0x00010000, 0xc9430c87, 0x7dc8a647 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgeu.h, 0x00000001, 0x57fb825c, 0xa34d03d2 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgeu.h, 0x00000000, 0x98a738b6, 0xb8248040 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgeu.h, 0x00000000, 0x5e33f46b )
  TEST_RR_ZEROSRC1( 53, pv.cmpgeu.h, 0x00000000, 0x4f7c7054 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgeu.h, 0x00010001, 0x8914b90c )
  TEST_RR_ZEROSRC2( 55, pv.cmpgeu.h, 0x00010001, 0xcbe215f6 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgeu.h, 0x00010001 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgeu.h, 0x00010001 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgeu.h, 0x56c9b51f, 0x41ef684f )
  TEST_RR_ZERODEST( 59, pv.cmpgeu.h, 0xfdea6aad, 0x624e6c05 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
