# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgtu.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpgtu.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgtu.sc.h, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgtu.sc.h, 0x00000001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgtu.sc.h, 0x00000001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgtu.sc.h, 0x00000001, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgtu.sc.h, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgtu.sc.h, 0x00000001, 0x4a35e3ef, 0x88ec80d7 )
  TEST_RR_OP( 8, pv.cmpgtu.sc.h, 0x00010001, 0x5f60b489, 0x76762b00 )
  TEST_RR_OP( 9, pv.cmpgtu.sc.h, 0x00010001, 0xc3dfe929, 0x85c27e54 )
  TEST_RR_OP( 10, pv.cmpgtu.sc.h, 0x00010001, 0x87ceaa74, 0x0f1f67af )
  TEST_RR_OP( 11, pv.cmpgtu.sc.h, 0x00010000, 0x2b150c50, 0x23141796 )
  TEST_RR_OP( 12, pv.cmpgtu.sc.h, 0x00010000, 0x51f6135c, 0x991b1c67 )
  TEST_RR_OP( 13, pv.cmpgtu.sc.h, 0x00000000, 0x891647c4, 0x0d0ba7a0 )
  TEST_RR_OP( 14, pv.cmpgtu.sc.h, 0x00000001, 0x75e7efae, 0xb118adbe )
  TEST_RR_OP( 15, pv.cmpgtu.sc.h, 0x00010001, 0x87269ea1, 0x2ac23b39 )
  TEST_RR_OP( 16, pv.cmpgtu.sc.h, 0x00010001, 0xafe6e107, 0x06758961 )
  TEST_RR_OP( 17, pv.cmpgtu.sc.h, 0x00000000, 0x63647c8b, 0x9da19928 )
  TEST_RR_OP( 18, pv.cmpgtu.sc.h, 0x00000001, 0x2c76ec37, 0xa9843c1e )
  TEST_RR_OP( 19, pv.cmpgtu.sc.h, 0x00010001, 0xf0cef39f, 0x81e591e9 )
  TEST_RR_OP( 20, pv.cmpgtu.sc.h, 0x00010001, 0xa0f8a8d2, 0xeb850897 )
  TEST_RR_OP( 21, pv.cmpgtu.sc.h, 0x00000001, 0x3149b9f2, 0x2ec86c62 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgtu.sc.h, 0x00010001, 0x43d644c8, 0x93171bd1 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgtu.sc.h, 0x00000000, 0x39027bd1, 0x2cdeca82 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgtu.sc.h, 0x00010000, 0xf1810aa1, 0x16a7d6d5 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgtu.sc.h, 0x00000001, 0x46a6a4a7, 0xf0fa5859 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgtu.sc.h, 0x00010000, 0xc66f7d47 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgtu.sc.h, 0x00010000, 0x4ffc336f )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgtu.sc.h, 0x00000000, 0x710786cf, 0x710786cf )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgtu.sc.h, 0x00000000, 0x3b499538, 0x3b499538 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgtu.sc.h, 0x00010000, 0xb11c82f5, 0xb11c82f5 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgtu.sc.h, 0x00000000, 0x3081d2a7, 0x3081d2a7 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgtu.sc.h, 0x00010000, 0x5f5c4cdd, 0x5f5c4cdd )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgtu.sc.h, 0x00010000, 0x245d0d32, 0x245d0d32 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgtu.sc.h, 0x00010001, 0xe4a4b2cc, 0x83b35ebe )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgtu.sc.h, 0x00000000, 0x7a9b2857, 0x7d5dcb1a )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgtu.sc.h, 0x00000000, 0x6490325d, 0x889377b7 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgtu.sc.h, 0x00010001, 0x719085a4, 0x12b24fd4 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgtu.sc.h, 0x00010000, 0xe9992fb9, 0xf5884b9d )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgtu.sc.h, 0x00010000, 0xd3ac7ba6, 0x2776a82e )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgtu.sc.h, 0x00010000, 0xff3252d6, 0x2a1ed25d )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgtu.sc.h, 0x00000001, 0x4ebb8700, 0x427861d0 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgtu.sc.h, 0x00010001, 0x9d75be57, 0xec311c97 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgtu.sc.h, 0x00000001, 0x21c4f9c2, 0x28d695af )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgtu.sc.h, 0x00000000, 0x0680d0a2, 0xbbadd980 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgtu.sc.h, 0x00000000, 0x2910180b, 0x483ca335 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgtu.sc.h, 0x00010001, 0xd4048f37, 0x1c1661a9 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgtu.sc.h, 0x00010001, 0xbef53bfb, 0xfb0225ec )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgtu.sc.h, 0x00000001, 0x1a75a7e8, 0x54431bab )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgtu.sc.h, 0x00010001, 0xfe0ffd2f, 0xe6d485b9 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgtu.sc.h, 0x00000001, 0x1010ecd1, 0x9dbb2ee3 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgtu.sc.h, 0x00010001, 0x6ea5fa36, 0xcae0505b )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgtu.sc.h, 0x00000000, 0xac1be074 )
  TEST_RR_ZEROSRC1( 53, pv.cmpgtu.sc.h, 0x00000000, 0xa087e22c )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgtu.sc.h, 0x00010001, 0x0a7f5539 )
  TEST_RR_ZEROSRC2( 55, pv.cmpgtu.sc.h, 0x00010001, 0x5c0ce16c )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgtu.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgtu.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgtu.sc.h, 0x23af7e2f, 0x516559bd )
  TEST_RR_ZERODEST( 59, pv.cmpgtu.sc.h, 0x16dfab37, 0x26a0c547 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
