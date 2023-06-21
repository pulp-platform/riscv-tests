# See LICENSE for license details.

#*****************************************************************************
# pv.cmpge.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpge.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpge.sc.h, 0x00000001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpge.sc.h, 0x00000001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpge.sc.h, 0x00000001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpge.sc.h, 0x00010001, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpge.sc.h, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpge.sc.h, 0x00000000, 0xa327e537, 0xda3953b4 )
  TEST_RR_OP( 8, pv.cmpge.sc.h, 0x00000000, 0xf818c48d, 0xd1b328d0 )
  TEST_RR_OP( 9, pv.cmpge.sc.h, 0x00010000, 0x2c47c33d, 0x8db1fa7d )
  TEST_RR_OP( 10, pv.cmpge.sc.h, 0x00000000, 0xed77dad8, 0xa0073268 )
  TEST_RR_OP( 11, pv.cmpge.sc.h, 0x00000000, 0x0ae2caab, 0xa1052040 )
  TEST_RR_OP( 12, pv.cmpge.sc.h, 0x00000001, 0x8c483c07, 0xb6efb628 )
  TEST_RR_OP( 13, pv.cmpge.sc.h, 0x00000000, 0xfb6f2787, 0x11fc2c1d )
  TEST_RR_OP( 14, pv.cmpge.sc.h, 0x00000001, 0x231b4c11, 0x77ed3577 )
  TEST_RR_OP( 15, pv.cmpge.sc.h, 0x00000001, 0xeb961b14, 0x1695fb1f )
  TEST_RR_OP( 16, pv.cmpge.sc.h, 0x00000000, 0x6a1c5a91, 0xa28f6c6d )
  TEST_RR_OP( 17, pv.cmpge.sc.h, 0x00000000, 0x0334006b, 0xe932536e )
  TEST_RR_OP( 18, pv.cmpge.sc.h, 0x00000001, 0x8a740a09, 0x9f62facb )
  TEST_RR_OP( 19, pv.cmpge.sc.h, 0x00000001, 0xa0135164, 0x5595d869 )
  TEST_RR_OP( 20, pv.cmpge.sc.h, 0x00010001, 0xc156ef3d, 0x7252800b )
  TEST_RR_OP( 21, pv.cmpge.sc.h, 0x00010001, 0x14406bf3, 0xb79bde91 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpge.sc.h, 0x00000000, 0xfa04d5db, 0xef883a67 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpge.sc.h, 0x00010000, 0x579db146, 0x951e0b7d )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpge.sc.h, 0x00010001, 0x40afd890, 0x6920ac86 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpge.sc.h, 0x00010001, 0xd80bad50, 0x4b4e9dd3 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpge.sc.h, 0x00010001, 0x49bb2ef3 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpge.sc.h, 0x00000001, 0x3b675720 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpge.sc.h, 0x00010001, 0x6f125427, 0x6f125427 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpge.sc.h, 0x00010001, 0x1037d302, 0x1037d302 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpge.sc.h, 0x00000001, 0xcc6253e8, 0xcc6253e8 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpge.sc.h, 0x00010001, 0xfef1cb6a, 0xfef1cb6a )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpge.sc.h, 0x00010001, 0xc98cac8d, 0xc98cac8d )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpge.sc.h, 0x00010001, 0xdd6ab8cf, 0xdd6ab8cf )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpge.sc.h, 0x00010000, 0x714ae325, 0x39f9e59a )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpge.sc.h, 0x00000001, 0xcc2a0338, 0xd3ffed56 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpge.sc.h, 0x00000000, 0xcb223da1, 0x971959f8 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpge.sc.h, 0x00010001, 0x4a1032ed, 0x691d9192 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpge.sc.h, 0x00000001, 0xf94a70b0, 0xb0cf277e )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpge.sc.h, 0x00000001, 0xad2a7b6a, 0x85837260 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpge.sc.h, 0x00010000, 0x62d8fc36, 0x13441f4d )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpge.sc.h, 0x00000000, 0x3be6fda8, 0x1ee14ec3 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpge.sc.h, 0x00000000, 0xb5b8d15e, 0xac823d4f )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpge.sc.h, 0x00010000, 0x2da7db17, 0xfd282bff )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpge.sc.h, 0x00010001, 0x5c7dccf4, 0x98d0806b )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpge.sc.h, 0x00010001, 0xf994b878, 0x2d09af71 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpge.sc.h, 0x00000000, 0x42dcc3b0, 0x41837d69 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpge.sc.h, 0x00010001, 0x559877d9, 0xb00350ab )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpge.sc.h, 0x00010001, 0x67ae6e25, 0x5fb0e3b8 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpge.sc.h, 0x00010001, 0xe85c0981, 0x597ba6b8 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpge.sc.h, 0x00010000, 0x5fd816c0, 0x90f1246a )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpge.sc.h, 0x00010001, 0xbf10acec, 0x7bc39e2d )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpge.sc.h, 0x00000000, 0x60e058ab )
  TEST_RR_ZEROSRC1( 53, pv.cmpge.sc.h, 0x00000000, 0x388435bb )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpge.sc.h, 0x00000000, 0xb5aa9b34 )
  TEST_RR_ZEROSRC2( 55, pv.cmpge.sc.h, 0x00010000, 0x78d0d053 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpge.sc.h, 0x00010001 )
  TEST_RR_ZEROSRC12( 57, pv.cmpge.sc.h, 0x00010001 )
  
  TEST_RR_ZERODEST( 58, pv.cmpge.sc.h, 0x5d2d1b8b, 0x68e7fd96 )
  TEST_RR_ZERODEST( 59, pv.cmpge.sc.h, 0xfa90bf93, 0xdef6fb80 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
