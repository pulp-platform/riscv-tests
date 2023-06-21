# See LICENSE for license details.

#*****************************************************************************
# pv.cmplt.h
#-----------------------------------------------------------------------------
#
# Test pv.cmplt.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmplt.h, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmplt.h, 0x00000000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmplt.h, 0x00000000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmplt.h, 0x00010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmplt.h, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmplt.h, 0x00010001, 0x30a2b089, 0x6af12795 )
  TEST_RR_OP( 8, pv.cmplt.h, 0x00000000, 0x4ed21513, 0x0220e111 )
  TEST_RR_OP( 9, pv.cmplt.h, 0x00010001, 0x9a1802ad, 0xd72307b8 )
  TEST_RR_OP( 10, pv.cmplt.h, 0x00000001, 0xd115c80e, 0xcbb573e8 )
  TEST_RR_OP( 11, pv.cmplt.h, 0x00010001, 0x39571d9d, 0x7efb5254 )
  TEST_RR_OP( 12, pv.cmplt.h, 0x00000001, 0xba1fd010, 0xa298fdc1 )
  TEST_RR_OP( 13, pv.cmplt.h, 0x00010001, 0xa4628bb0, 0x07621746 )
  TEST_RR_OP( 14, pv.cmplt.h, 0x00000001, 0x3553e6ba, 0xa8e06235 )
  TEST_RR_OP( 15, pv.cmplt.h, 0x00000001, 0x12d58e8f, 0x89c8b6af )
  TEST_RR_OP( 16, pv.cmplt.h, 0x00000001, 0x32951806, 0x208652fa )
  TEST_RR_OP( 17, pv.cmplt.h, 0x00000001, 0x4c83a914, 0x4445ae89 )
  TEST_RR_OP( 18, pv.cmplt.h, 0x00000001, 0x2483b006, 0x1640d88a )
  TEST_RR_OP( 19, pv.cmplt.h, 0x00000001, 0x391fd99a, 0xc3126125 )
  TEST_RR_OP( 20, pv.cmplt.h, 0x00010001, 0x98c0fdf7, 0x00515935 )
  TEST_RR_OP( 21, pv.cmplt.h, 0x00000000, 0x00f870d1, 0xaceb565a )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmplt.h, 0x00010000, 0x05c6b237, 0x4077972b )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmplt.h, 0x00000000, 0x7471d414, 0x4403c207 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmplt.h, 0x00000001, 0x4024f934, 0xe8956a96 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmplt.h, 0x00000001, 0xee9abd07, 0x94b9ec05 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmplt.h, 0x00000000, 0xecaf2e49 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmplt.h, 0x00000000, 0x0412dda9 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmplt.h, 0x00000000, 0xa99f2099, 0xa99f2099 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmplt.h, 0x00000000, 0x7adecd71, 0x7adecd71 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmplt.h, 0x00000000, 0x092c6fda, 0x092c6fda )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmplt.h, 0x00000000, 0x0219c31c, 0x0219c31c )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmplt.h, 0x00000000, 0xd990fac6, 0xd990fac6 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmplt.h, 0x00000000, 0xf3a88503, 0xf3a88503 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmplt.h, 0x00010001, 0x9ce832ef, 0xea2e5a4a )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmplt.h, 0x00010000, 0x406d53a4, 0x66c8926b )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmplt.h, 0x00010001, 0x717414fd, 0x78672202 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmplt.h, 0x00000001, 0x6072b05f, 0xfab95189 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmplt.h, 0x00000001, 0xffe5ba39, 0x96cd4eff )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmplt.h, 0x00000001, 0xb5eed3df, 0xae1447dc )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmplt.h, 0x00010001, 0xc4f30f34, 0x4e3b5dba )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmplt.h, 0x00000000, 0x514c2769, 0xe6a2245e )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmplt.h, 0x00000001, 0x79cd2c2e, 0xce4d6ae9 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmplt.h, 0x00000000, 0x3128528a, 0xfd20f25c )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmplt.h, 0x00000001, 0x42e09e6a, 0x8c936923 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmplt.h, 0x00000001, 0x46cfef17, 0x1d537068 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmplt.h, 0x00010001, 0xd98ed9f1, 0x2f84f7ed )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmplt.h, 0x00010000, 0xe66f624f, 0x0a332b37 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmplt.h, 0x00000000, 0x061fc628, 0x90dea3d4 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmplt.h, 0x00010001, 0x27802e05, 0x72385977 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmplt.h, 0x00000001, 0xfbb1c82f, 0xaa1d7608 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmplt.h, 0x00000001, 0x1ed3d63b, 0xe4c41a6e )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmplt.h, 0x00010001, 0x392b2a79 )
  TEST_RR_ZEROSRC1( 53, pv.cmplt.h, 0x00000000, 0x8928eb13 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmplt.h, 0x00010000, 0xd15b0fe7 )
  TEST_RR_ZEROSRC2( 55, pv.cmplt.h, 0x00010000, 0xef36658b )
  
  TEST_RR_ZEROSRC12( 56, pv.cmplt.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmplt.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmplt.h, 0xfb869deb, 0x99267cb4 )
  TEST_RR_ZERODEST( 59, pv.cmplt.h, 0x2eadc211, 0xf48d8b33 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
