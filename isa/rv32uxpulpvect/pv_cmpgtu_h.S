# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgtu.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpgtu.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgtu.h, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgtu.h, 0x00010001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgtu.h, 0x00010001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgtu.h, 0x00000001, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgtu.h, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgtu.h, 0x00000001, 0xab3d9db7, 0xf1611350 )
  TEST_RR_OP( 8, pv.cmpgtu.h, 0x00000001, 0x26dab619, 0x4add96af )
  TEST_RR_OP( 9, pv.cmpgtu.h, 0x00010000, 0xce120d9d, 0x5f9b184a )
  TEST_RR_OP( 10, pv.cmpgtu.h, 0x00010000, 0xd529a47c, 0x02a9f9ce )
  TEST_RR_OP( 11, pv.cmpgtu.h, 0x00010001, 0xd19bd917, 0x833b4df6 )
  TEST_RR_OP( 12, pv.cmpgtu.h, 0x00010000, 0xe75e0b4c, 0xc9bceeee )
  TEST_RR_OP( 13, pv.cmpgtu.h, 0x00010001, 0xf7529a7a, 0x18a07b66 )
  TEST_RR_OP( 14, pv.cmpgtu.h, 0x00000001, 0x3985850e, 0xefe3027f )
  TEST_RR_OP( 15, pv.cmpgtu.h, 0x00000000, 0x52952281, 0x65518365 )
  TEST_RR_OP( 16, pv.cmpgtu.h, 0x00010000, 0x5bb60066, 0x1f7e3bbc )
  TEST_RR_OP( 17, pv.cmpgtu.h, 0x00010001, 0x85639d01, 0x377118f2 )
  TEST_RR_OP( 18, pv.cmpgtu.h, 0x00010001, 0xe9ceea6a, 0xba9d862d )
  TEST_RR_OP( 19, pv.cmpgtu.h, 0x00000001, 0x2f61bb81, 0x44583b42 )
  TEST_RR_OP( 20, pv.cmpgtu.h, 0x00010001, 0x86e8c8ca, 0x6b424540 )
  TEST_RR_OP( 21, pv.cmpgtu.h, 0x00000000, 0xa05547e2, 0xaeee4f3b )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgtu.h, 0x00010000, 0x710c8f3b, 0x421ed517 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgtu.h, 0x00010000, 0xe067384f, 0x279cd940 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgtu.h, 0x00000000, 0x31f5359e, 0x4644abf3 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgtu.h, 0x00000001, 0x5a04a55e, 0x9e6620e7 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgtu.h, 0x00000000, 0xc861c0dd )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgtu.h, 0x00000000, 0xae25e63e )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgtu.h, 0x00000000, 0xa282972f, 0xa282972f )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgtu.h, 0x00000000, 0x78f85199, 0x78f85199 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgtu.h, 0x00000000, 0xb800cb4c, 0xb800cb4c )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgtu.h, 0x00000000, 0xae8370a9, 0xae8370a9 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgtu.h, 0x00000000, 0xb02677a3, 0xb02677a3 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgtu.h, 0x00000000, 0xb0afb5b9, 0xb0afb5b9 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgtu.h, 0x00010001, 0xa1fce78d, 0x4c4db7d8 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgtu.h, 0x00010000, 0x473c8be1, 0x0d62ecc4 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgtu.h, 0x00010001, 0xe492ba0f, 0x33a97e19 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgtu.h, 0x00010001, 0x971862e5, 0x58f618e2 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgtu.h, 0x00000001, 0xd330cca5, 0xf3be6a1d )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgtu.h, 0x00010000, 0xc6a813ef, 0x2783fde5 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgtu.h, 0x00010000, 0x42a58698, 0x2cb0ff28 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgtu.h, 0x00010000, 0xaac10437, 0x7a6195a0 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgtu.h, 0x00010001, 0x9354986d, 0x16ac8aee )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgtu.h, 0x00010001, 0x0e2ab28c, 0x01d69485 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgtu.h, 0x00000000, 0x0cb71507, 0xd8408441 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgtu.h, 0x00010001, 0x751bb3c9, 0x0f4246f4 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgtu.h, 0x00000001, 0x6688cc49, 0xaad5bc35 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgtu.h, 0x00010001, 0x7bd4e438, 0x3826043b )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgtu.h, 0x00010000, 0x9803539f, 0x1c2a594e )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgtu.h, 0x00010001, 0xc514aebb, 0x838789ae )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgtu.h, 0x00010001, 0xf27675df, 0xbdda04e7 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgtu.h, 0x00010001, 0x46b8e5cf, 0x01ef717b )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgtu.h, 0x00000000, 0xf7a91fef )
  TEST_RR_ZEROSRC1( 53, pv.cmpgtu.h, 0x00000000, 0xf06b1660 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgtu.h, 0x00010001, 0x8288d56c )
  TEST_RR_ZEROSRC2( 55, pv.cmpgtu.h, 0x00010001, 0x87c6f271 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgtu.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgtu.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgtu.h, 0xbbe77555, 0x726c8823 )
  TEST_RR_ZERODEST( 59, pv.cmpgtu.h, 0xdb4542e8, 0xc52817c8 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
