# See LICENSE for license details.

#*****************************************************************************
# pv.avgu.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.avgu.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.avgu.sc.b, 0x7b7b7a7a, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.avgu.sc.b, 0x222a333b, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.avgu.sc.b, 0x1c173a2a, 0xe0d51bfc, 0x4f985559 )
  TEST_RR_OP( 5, pv.avgu.sc.b, 0x4f552b36, 0x939f4a60, 0x463acd0c )
  TEST_RR_OP( 6, pv.avgu.sc.b, 0x016f5040, 0xe0bd7f5f, 0x32434722 )
  TEST_RR_OP( 7, pv.avgu.sc.b, 0x197f3954, 0x7440b5ea, 0xcf2d6ebe )
  TEST_RR_OP( 8, pv.avgu.sc.b, 0x1549127e, 0xd940d2aa, 0x3563e252 )
  TEST_RR_OP( 9, pv.avgu.sc.b, 0x704c432f, 0xac65532a, 0x69fd6f34 )
  TEST_RR_OP( 10, pv.avgu.sc.b, 0x7d0d7e1a, 0xb6d5b8ef, 0x1b4f3c45 )
  TEST_RR_OP( 11, pv.avgu.sc.b, 0x03382228, 0x7be5b9c4, 0xc63cf88c )
  TEST_RR_OP( 12, pv.avgu.sc.b, 0x01443632, 0x4acfb4ac, 0x83e7cbb9 )
  TEST_RR_OP( 13, pv.avgu.sc.b, 0x121c282b, 0x384d646a, 0xb0f9daec )
  TEST_RR_OP( 14, pv.avgu.sc.b, 0x260a5878, 0x3a029fdf, 0x8a9a5712 )
  TEST_RR_OP( 15, pv.avgu.sc.b, 0x521b7e1f, 0xd6682d70, 0x65ef17cf )
  TEST_RR_OP( 16, pv.avgu.sc.b, 0x1f7b7103, 0x5811fd21, 0xaf999ee6 )
  TEST_RR_OP( 17, pv.avgu.sc.b, 0x513f7030, 0x57339515, 0x0358614c )
  TEST_RR_OP( 18, pv.avgu.sc.b, 0x2d605935, 0x33988b43, 0x0bf56e28 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.avgu.sc.b, 0x7e76290f, 0xeada410c, 0xdbf76d12 )
  TEST_RR_SRC1_EQ_DEST( 20, pv.avgu.sc.b, 0x2d2f0564, 0x3d41edaa, 0xbd7f361e )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.avgu.sc.b, 0x4650606a, 0x788cacbf, 0x311bdd15 )
  TEST_RR_SRC2_EQ_DEST( 22, pv.avgu.sc.b, 0x300c402f, 0x914ab190, 0x827317cf )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.avgu.sc.b, 0x5243270f, 0x96773f0f )
  TEST_RR_SRC12_EQ_DEST( 24, pv.avgu.sc.b, 0x5d5d1359, 0xe2e24dd9 )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.avgu.sc.b, 0x3d557119, 0xe2114999, 0xe2114999 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.avgu.sc.b, 0x66454f27, 0x25e3f7a7, 0x25e3f7a7 )
  TEST_RR_DEST_BYPASS( 45, 2, pv.avgu.sc.b, 0x090a4c0a, 0x080a8f0a, 0x080a8f0a )
  TEST_RR_DEST_BYPASS( 46, 0, pv.avgu.sc.b, 0x531b1178, 0xae3f2af8, 0xae3f2af8 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.avgu.sc.b, 0x6c002f47, 0x113a97c7, 0x113a97c7 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.avgu.sc.b, 0x65131c3d, 0x8eeafb3d, 0x8eeafb3d )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.avgu.sc.b, 0x053f7a5d, 0x4fc238fe, 0xe8babbbc )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.avgu.sc.b, 0x5d33664f, 0xd17ce2b5, 0xddd9fbea )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.avgu.sc.b, 0x7448684b, 0x07aeefb4, 0x8b7862e2 )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.avgu.sc.b, 0x016a5876, 0x6234114d, 0xddc484a0 )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.avgu.sc.b, 0x702a795d, 0x2ea13f07, 0x5df046b3 )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.avgu.sc.b, 0x4d625623, 0xc7f1d873, 0x209eafd4 )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.avgu.sc.b, 0x30101017, 0x4c0c0d1b, 0x58695314 )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.avgu.sc.b, 0x650e104f, 0x489b9e1d, 0x45978482 )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.avgu.sc.b, 0x6842130b, 0x5e12b3a3, 0x239a7373 )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.avgu.sc.b, 0x67113d1a, 0x2b80d891, 0x906affa3 )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.avgu.sc.b, 0x3211725c, 0xe1a06236, 0xeb6e8f83 )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.avgu.sc.b, 0x5854524e, 0x544c4840, 0x6c1e085c )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.avgu.sc.b, 0x0548577f, 0xe66d8ada, 0xeb0aa724 )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.avgu.sc.b, 0x5f380f3f, 0xd0823190, 0x957b7dee )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.avgu.sc.b, 0x3c007f72, 0x0d949378, 0x1cfdca6c )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.avgu.sc.b, 0x653a3510, 0xc46d631a, 0x6fc72407 )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.avgu.sc.b, 0x0942073b, 0x15861079, 0xcaa2f3fe )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.avgu.sc.b, 0x60197e5b, 0x5fd19b54, 0x2e7ba762 )
  
  

  TEST_RR_ZEROSRC1( 49, pv.avgu.sc.b, 0x60606060, 0x8f1ac4c0 )
  TEST_RR_ZEROSRC1( 50, pv.avgu.sc.b, 0x70707070, 0xa9ee2fe1 )
  
  TEST_RR_ZEROSRC2( 51, pv.avgu.sc.b, 0x07175407, 0x0f2ea90f )
  TEST_RR_ZEROSRC2( 52, pv.avgu.sc.b, 0x767d130a, 0xecfb2715 )
  
  TEST_RR_ZEROSRC12( 53, pv.avgu.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.avgu.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.avgu.sc.b, 0x20fa56f2, 0x719c501e )
  TEST_RR_ZERODEST( 56, pv.avgu.sc.b, 0x64719787, 0x52508df5 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
