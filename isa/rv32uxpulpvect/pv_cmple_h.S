# See LICENSE for license details.

#*****************************************************************************
# pv.cmple.h
#-----------------------------------------------------------------------------
#
# Test pv.cmple.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmple.h, 0x00010001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmple.h, 0x00000000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmple.h, 0x00000000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmple.h, 0x00010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmple.h, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmple.h, 0x00000000, 0x0e46031d, 0xc3aac3e5 )
  TEST_RR_OP( 8, pv.cmple.h, 0x00000001, 0x17bc0358, 0xfd486ab0 )
  TEST_RR_OP( 9, pv.cmple.h, 0x00010000, 0xd41b8ed0, 0x276a89fa )
  TEST_RR_OP( 10, pv.cmple.h, 0x00000000, 0xbd97734f, 0xb98af79f )
  TEST_RR_OP( 11, pv.cmple.h, 0x00000001, 0x6606548a, 0x82137549 )
  TEST_RR_OP( 12, pv.cmple.h, 0x00010001, 0xbeeda411, 0x7dc4af51 )
  TEST_RR_OP( 13, pv.cmple.h, 0x00010001, 0x1d780e4c, 0x7a446de5 )
  TEST_RR_OP( 14, pv.cmple.h, 0x00000000, 0xf8a67b8e, 0xb4b3f931 )
  TEST_RR_OP( 15, pv.cmple.h, 0x00010001, 0xa8692450, 0x14ac5cc6 )
  TEST_RR_OP( 16, pv.cmple.h, 0x00010000, 0xd49700d6, 0xecfdb2c7 )
  TEST_RR_OP( 17, pv.cmple.h, 0x00000000, 0x284133d1, 0xa42de218 )
  TEST_RR_OP( 18, pv.cmple.h, 0x00010001, 0xf75bf8ca, 0x65c6761b )
  TEST_RR_OP( 19, pv.cmple.h, 0x00000001, 0x0c7cfaf9, 0xb8d754b3 )
  TEST_RR_OP( 20, pv.cmple.h, 0x00000000, 0x3bd40c97, 0xc704ff52 )
  TEST_RR_OP( 21, pv.cmple.h, 0x00010001, 0xb8a4ded1, 0xe4731691 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmple.h, 0x00000000, 0x4aaac722, 0xb80fa12f )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmple.h, 0x00000000, 0x71a11d09, 0x69d891d3 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmple.h, 0x00000001, 0x6901a368, 0xc8895479 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmple.h, 0x00000000, 0x7c12eb5d, 0x1ea5af05 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmple.h, 0x00010001, 0xf9e66b15 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmple.h, 0x00010001, 0x1a4a26d0 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmple.h, 0x00010001, 0xff6d4e47, 0xff6d4e47 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmple.h, 0x00010001, 0x4ecf8c43, 0x4ecf8c43 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmple.h, 0x00010001, 0x4b1ae9d7, 0x4b1ae9d7 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmple.h, 0x00010001, 0xd1b6c280, 0xd1b6c280 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmple.h, 0x00010001, 0xc32d458e, 0xc32d458e )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmple.h, 0x00010001, 0xa0b6f8b3, 0xa0b6f8b3 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmple.h, 0x00000000, 0x50acdf4e, 0xe42cda16 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmple.h, 0x00000001, 0x7ebff670, 0x0cd93322 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmple.h, 0x00000001, 0xe62b0a7c, 0xac5e41a2 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmple.h, 0x00000000, 0x7755e3c8, 0x2d1a9237 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmple.h, 0x00010001, 0xb1f11ea0, 0x2a3f7a9c )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmple.h, 0x00010000, 0xfd106a81, 0x67d1efec )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmple.h, 0x00010000, 0xd6b47e9b, 0x7fd932ec )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmple.h, 0x00010001, 0xd405961a, 0x382c6675 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmple.h, 0x00010000, 0xda7a53c5, 0x387f28d0 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmple.h, 0x00000000, 0x37c93595, 0x845ba803 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmple.h, 0x00000000, 0xae278d25, 0x826b84dc )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmple.h, 0x00010001, 0x99504017, 0x278c56a4 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmple.h, 0x00000000, 0x6a6a2478, 0xc70e1912 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmple.h, 0x00010000, 0x32e7c021, 0x5c5f9780 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmple.h, 0x00010000, 0xe8d63d0a, 0xfd0bcbb6 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmple.h, 0x00010000, 0xe6e22c91, 0x0e7cbcab )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmple.h, 0x00000000, 0x6de07db1, 0xcd5c3a3e )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmple.h, 0x00010001, 0xd9471176, 0x083c5bba )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmple.h, 0x00010001, 0x636f4ce5 )
  TEST_RR_ZEROSRC1( 53, pv.cmple.h, 0x00010001, 0x68c96142 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmple.h, 0x00000001, 0x3e3d9cd8 )
  TEST_RR_ZEROSRC2( 55, pv.cmple.h, 0x00000001, 0x1318dcbb )
  
  TEST_RR_ZEROSRC12( 56, pv.cmple.h, 0x00010001 )
  TEST_RR_ZEROSRC12( 57, pv.cmple.h, 0x00010001 )
  
  TEST_RR_ZERODEST( 58, pv.cmple.h, 0x1d1b8581, 0x3583fe9e )
  TEST_RR_ZERODEST( 59, pv.cmple.h, 0x341fcac0, 0x4c53eef1 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
