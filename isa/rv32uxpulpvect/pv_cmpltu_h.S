# See LICENSE for license details.

#*****************************************************************************
# pv.cmpltu.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpltu.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpltu.h, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpltu.h, 0x00000000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpltu.h, 0x00000000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpltu.h, 0x00010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpltu.h, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpltu.h, 0x00010000, 0x0c0dd645, 0xdf015cf6 )
  TEST_RR_OP( 8, pv.cmpltu.h, 0x00010001, 0x6f0b1507, 0xbc37876e )
  TEST_RR_OP( 9, pv.cmpltu.h, 0x00000000, 0x62d1c722, 0x0f912b99 )
  TEST_RR_OP( 10, pv.cmpltu.h, 0x00010001, 0x41d87519, 0xdeded9dc )
  TEST_RR_OP( 11, pv.cmpltu.h, 0x00000001, 0x94322b9a, 0x19af4ebb )
  TEST_RR_OP( 12, pv.cmpltu.h, 0x00010000, 0x3aa3f61b, 0x9b937d05 )
  TEST_RR_OP( 13, pv.cmpltu.h, 0x00000000, 0xe3522e0c, 0x01cd024b )
  TEST_RR_OP( 14, pv.cmpltu.h, 0x00010000, 0x5312c357, 0x57f19917 )
  TEST_RR_OP( 15, pv.cmpltu.h, 0x00000001, 0xa20c0ca8, 0x3caf7c91 )
  TEST_RR_OP( 16, pv.cmpltu.h, 0x00010001, 0x32e038af, 0x791a48b4 )
  TEST_RR_OP( 17, pv.cmpltu.h, 0x00010000, 0xa2f5b123, 0xbe888abe )
  TEST_RR_OP( 18, pv.cmpltu.h, 0x00010000, 0x9151d4cc, 0xe1682cc5 )
  TEST_RR_OP( 19, pv.cmpltu.h, 0x00010000, 0x35fde44c, 0xadf84054 )
  TEST_RR_OP( 20, pv.cmpltu.h, 0x00010001, 0x41c57705, 0x85e9e6dc )
  TEST_RR_OP( 21, pv.cmpltu.h, 0x00010000, 0x2585afb4, 0xaedd4ad8 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpltu.h, 0x00010000, 0x1f56a2b9, 0x3847719b )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpltu.h, 0x00000000, 0xd1233cfa, 0x671707f9 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpltu.h, 0x00010001, 0xc9616b39, 0xea51cbbc )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpltu.h, 0x00010000, 0x59b2a56f, 0xc3cb5bc8 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpltu.h, 0x00000000, 0xc88ff1b8 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpltu.h, 0x00000000, 0xd1e92bff )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpltu.h, 0x00000000, 0xb7adcca5, 0xb7adcca5 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpltu.h, 0x00000000, 0x2b7a7341, 0x2b7a7341 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpltu.h, 0x00000000, 0xe7470c17, 0xe7470c17 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpltu.h, 0x00000000, 0x08674d16, 0x08674d16 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpltu.h, 0x00000000, 0x843e0eff, 0x843e0eff )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpltu.h, 0x00000000, 0x25ff2105, 0x25ff2105 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpltu.h, 0x00010000, 0xa8264553, 0xfc531059 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpltu.h, 0x00000001, 0xe7b80c56, 0x1c7758d9 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpltu.h, 0x00010001, 0x50de413b, 0x5a7244f4 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpltu.h, 0x00010000, 0x261ad31c, 0xc8988f4e )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpltu.h, 0x00000001, 0x5ee92cf7, 0x298e6507 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpltu.h, 0x00000001, 0xc9ca8b1b, 0xc124cc8c )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpltu.h, 0x00010000, 0x66cdf89d, 0xac982024 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpltu.h, 0x00010000, 0x3d50fe1e, 0x492dd801 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpltu.h, 0x00010000, 0x4e2ee8cc, 0x7ac3db87 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpltu.h, 0x00010000, 0x8e36a66e, 0xf8d3945b )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpltu.h, 0x00000000, 0x7611b37d, 0x159451aa )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpltu.h, 0x00000000, 0x4a4bc85d, 0x45f56e06 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpltu.h, 0x00000000, 0x497db58b, 0x368f69a4 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpltu.h, 0x00010001, 0xd48f4d7f, 0xd93eae22 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpltu.h, 0x00010001, 0x34b32538, 0x839b6fbe )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpltu.h, 0x00000000, 0xf11df489, 0x6b77d556 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpltu.h, 0x00010000, 0x53dac61c, 0x94f3bac5 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpltu.h, 0x00000000, 0xc7dbd975, 0x5a236fc6 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpltu.h, 0x00010001, 0x4ca0e13f )
  TEST_RR_ZEROSRC1( 53, pv.cmpltu.h, 0x00010001, 0x5800bca8 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpltu.h, 0x00000000, 0xdd22e1b3 )
  TEST_RR_ZEROSRC2( 55, pv.cmpltu.h, 0x00000000, 0x47f37e0a )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpltu.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpltu.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpltu.h, 0xa0f891e9, 0x0df16e6c )
  TEST_RR_ZERODEST( 59, pv.cmpltu.h, 0x9f682076, 0x25576109 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
