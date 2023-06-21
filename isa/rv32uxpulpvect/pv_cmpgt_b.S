# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgt.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpgt.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgt.b, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgt.b, 0x01000100, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgt.b, 0x00010001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgt.b, 0x00000101, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgt.b, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgt.b, 0x00000101, 0x3688f3e1, 0x3db681c9 )
  TEST_RR_OP( 8, pv.cmpgt.b, 0x00000100, 0x8fa6318b, 0x6727f258 )
  TEST_RR_OP( 9, pv.cmpgt.b, 0x01010101, 0x76512232, 0xf5cbe21a )
  TEST_RR_OP( 10, pv.cmpgt.b, 0x01010101, 0x9d46674d, 0x8ab85c3b )
  TEST_RR_OP( 11, pv.cmpgt.b, 0x00000000, 0xbd831f03, 0x4d705d13 )
  TEST_RR_OP( 12, pv.cmpgt.b, 0x00000101, 0x979664f0, 0x6c0cd9e1 )
  TEST_RR_OP( 13, pv.cmpgt.b, 0x00010001, 0xf612f87b, 0x4aec33f7 )
  TEST_RR_OP( 14, pv.cmpgt.b, 0x01010101, 0xc165aed5, 0x8f4299af )
  TEST_RR_OP( 15, pv.cmpgt.b, 0x01010100, 0xe46c508c, 0x8fdfa86c )
  TEST_RR_OP( 16, pv.cmpgt.b, 0x01000101, 0x4f915ee7, 0xfbec4ea6 )
  TEST_RR_OP( 17, pv.cmpgt.b, 0x00010101, 0xc11706e3, 0x0cbdc4b2 )
  TEST_RR_OP( 18, pv.cmpgt.b, 0x00000100, 0xaff37ef1, 0x0f446319 )
  TEST_RR_OP( 19, pv.cmpgt.b, 0x00000000, 0xaaf00184, 0x4f52346c )
  TEST_RR_OP( 20, pv.cmpgt.b, 0x01000100, 0x4ae97900, 0x187cec4d )
  TEST_RR_OP( 21, pv.cmpgt.b, 0x00000001, 0x50c24e4d, 0x5a4b6414 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgt.b, 0x00000101, 0x95bfe24d, 0x9cedaae2 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgt.b, 0x01010100, 0x36c9effc, 0x05bdbb0a )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgt.b, 0x01010000, 0x4e401789, 0x03d72fb5 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgt.b, 0x01000101, 0x778c0740, 0x265b95e8 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgt.b, 0x00000000, 0x8ccdc34a )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgt.b, 0x00000000, 0xa1d03f19 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgt.b, 0x00000000, 0xaae639e6, 0xaae639e6 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgt.b, 0x00000000, 0x08c9c6a3, 0x08c9c6a3 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgt.b, 0x00000000, 0x9fb1e64e, 0x9fb1e64e )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgt.b, 0x00000000, 0x4967cdf8, 0x4967cdf8 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgt.b, 0x00000000, 0xeae80cf2, 0xeae80cf2 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgt.b, 0x00000000, 0x57954879, 0x57954879 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgt.b, 0x00010000, 0xa76ac2d8, 0x68242c23 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgt.b, 0x01000101, 0xc9fa6942, 0x8e6a0d15 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgt.b, 0x01010001, 0x216aa045, 0xe7b6a191 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgt.b, 0x01010100, 0x57044f8d, 0xdcd8e7dc )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgt.b, 0x01000100, 0x560d58e3, 0x167ebb7f )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgt.b, 0x00010001, 0x04311950, 0x5ec91cea )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgt.b, 0x01010100, 0xef5f0380, 0xccbae689 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgt.b, 0x00010001, 0x83f2a6f1, 0xc8a5c3db )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgt.b, 0x00000000, 0xd7a64cc3, 0xe4dc5fc8 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgt.b, 0x01000101, 0x4ae04c0e, 0xe02d8f07 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgt.b, 0x01010101, 0xec6077fe, 0xc74baab9 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgt.b, 0x00000000, 0xe0fde2f5, 0x0f1f227c )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgt.b, 0x01000000, 0x4e4ee12a, 0x0a730f6d )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgt.b, 0x00010100, 0xf4214c9c, 0x6ca215e8 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgt.b, 0x01000001, 0x78f1473b, 0x43f46ebb )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgt.b, 0x01010001, 0xb67b1b9b, 0x969c7c8a )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgt.b, 0x00010000, 0xfb988819, 0x6292b127 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgt.b, 0x00000001, 0x4c96943c, 0x512004c3 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgt.b, 0x01000000, 0xeb573c0a )
  TEST_RR_ZEROSRC1( 53, pv.cmpgt.b, 0x00000100, 0x5d0bd756 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgt.b, 0x00010000, 0xea20eae2 )
  TEST_RR_ZEROSRC2( 55, pv.cmpgt.b, 0x01010101, 0x5a3a747c )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgt.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgt.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgt.b, 0x9fe6dc77, 0x6fb303de )
  TEST_RR_ZERODEST( 59, pv.cmpgt.b, 0xd52defa3, 0xf26a3e95 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
