# See LICENSE for license details.

#*****************************************************************************
# pv.cmplt.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.cmplt.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmplt.sc.h, 0x00010000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmplt.sc.h, 0x00010000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmplt.sc.h, 0x00010000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmplt.sc.h, 0x00000000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmplt.sc.h, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmplt.sc.h, 0x00000000, 0xb771ca49, 0xfafe9944 )
  TEST_RR_OP( 8, pv.cmplt.sc.h, 0x00010001, 0xe6e997a7, 0xbb160ca8 )
  TEST_RR_OP( 9, pv.cmplt.sc.h, 0x00000000, 0x59ad5358, 0xd7750a17 )
  TEST_RR_OP( 10, pv.cmplt.sc.h, 0x00000000, 0x724e5273, 0x4b68e90d )
  TEST_RR_OP( 11, pv.cmplt.sc.h, 0x00010001, 0x19944e51, 0xb49f5f45 )
  TEST_RR_OP( 12, pv.cmplt.sc.h, 0x00010001, 0x88f8cab5, 0x0f1f2d0a )
  TEST_RR_OP( 13, pv.cmplt.sc.h, 0x00010001, 0xa5839fde, 0x7da90004 )
  TEST_RR_OP( 14, pv.cmplt.sc.h, 0x00000000, 0x0b3263ef, 0x9b60abcc )
  TEST_RR_OP( 15, pv.cmplt.sc.h, 0x00000001, 0x2cdb97ac, 0xd93a9f3d )
  TEST_RR_OP( 16, pv.cmplt.sc.h, 0x00010000, 0xf6097f38, 0xbb5c110a )
  TEST_RR_OP( 17, pv.cmplt.sc.h, 0x00010001, 0xe7c0e9a5, 0xb1821b15 )
  TEST_RR_OP( 18, pv.cmplt.sc.h, 0x00000001, 0x51fdc848, 0x6eae3897 )
  TEST_RR_OP( 19, pv.cmplt.sc.h, 0x00000000, 0x35d878c6, 0x8e3ba874 )
  TEST_RR_OP( 20, pv.cmplt.sc.h, 0x00010001, 0xfeec3aa4, 0x5123636f )
  TEST_RR_OP( 21, pv.cmplt.sc.h, 0x00010000, 0x86b7463e, 0x3813920d )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmplt.sc.h, 0x00000001, 0x0e73ea0f, 0xa99cf0d1 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmplt.sc.h, 0x00000000, 0xd51f2397, 0xd321b26b )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmplt.sc.h, 0x00000000, 0x676068f7, 0x709fa8db )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmplt.sc.h, 0x00000001, 0x7cb24eda, 0x9d306c08 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmplt.sc.h, 0x00010000, 0xc6df3130 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmplt.sc.h, 0x00010000, 0xbf4518e2 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmplt.sc.h, 0x00000000, 0x271f1252, 0x271f1252 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmplt.sc.h, 0x00000000, 0x719ec923, 0x719ec923 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmplt.sc.h, 0x00000000, 0xc3d5a326, 0xc3d5a326 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmplt.sc.h, 0x00000000, 0xf488aa4b, 0xf488aa4b )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmplt.sc.h, 0x00000000, 0x49c11b59, 0x49c11b59 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmplt.sc.h, 0x00010000, 0x4ddd6c47, 0x4ddd6c47 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmplt.sc.h, 0x00010001, 0xc2253818, 0xfd4450a0 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmplt.sc.h, 0x00000001, 0xdf7f9ebf, 0xbbdfaec9 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmplt.sc.h, 0x00000000, 0x2c8122a5, 0x4145b8fc )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmplt.sc.h, 0x00010001, 0x44786ba7, 0x28dc7096 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmplt.sc.h, 0x00010001, 0xfdd0347d, 0x5acc44de )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmplt.sc.h, 0x00010001, 0x9a46ba5e, 0x2b05e397 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmplt.sc.h, 0x00000001, 0x5d65c954, 0x27483379 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmplt.sc.h, 0x00000000, 0xbcb3f0ff, 0x94a3b111 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmplt.sc.h, 0x00000000, 0x5cca695e, 0x8bb2db5b )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmplt.sc.h, 0x00000000, 0x28fa3edc, 0x9b6a1b86 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmplt.sc.h, 0x00000000, 0x64c751f3, 0xb6ddbd15 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmplt.sc.h, 0x00010001, 0xe45c8c39, 0xffc017ec )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmplt.sc.h, 0x00010001, 0xae11db75, 0x57aaf2bf )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmplt.sc.h, 0x00010001, 0xb06e9115, 0x784c0e11 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmplt.sc.h, 0x00010000, 0x902f663c, 0x95acd358 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmplt.sc.h, 0x00000000, 0x3b6cc9b3, 0x81808a22 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmplt.sc.h, 0x00010001, 0x5f92d405, 0x962f714d )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmplt.sc.h, 0x00010001, 0x12abd0cf, 0x66532812 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmplt.sc.h, 0x00010001, 0x42007041 )
  TEST_RR_ZEROSRC1( 53, pv.cmplt.sc.h, 0x00010001, 0xdb3a061a )
  
  TEST_RR_ZEROSRC2( 54, pv.cmplt.sc.h, 0x00010000, 0xa2745a33 )
  TEST_RR_ZEROSRC2( 55, pv.cmplt.sc.h, 0x00010000, 0xcd86427e )
  
  TEST_RR_ZEROSRC12( 56, pv.cmplt.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmplt.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmplt.sc.h, 0xc83fbb16, 0x78ad570e )
  TEST_RR_ZERODEST( 59, pv.cmplt.sc.h, 0xebe0d004, 0x6e780044 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
