# See LICENSE for license details.

#*****************************************************************************
# pv.maxu.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.maxu.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.maxu.sc.h, 0x7f7e7d7c, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.maxu.sc.h, 0x55445544, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.maxu.sc.h, 0xca78dafa, 0x160ddafa, 0x8575ca78 )
  TEST_RR_OP( 5, pv.maxu.sc.h, 0x7ad182e9, 0x7ad182e9, 0x92ba44f4 )
  TEST_RR_OP( 6, pv.maxu.sc.h, 0x565f2f6f, 0x565f2f6f, 0xd3a619d3 )
  TEST_RR_OP( 7, pv.maxu.sc.h, 0xa805e4a9, 0x30f9e4a9, 0x4fcfa805 )
  TEST_RR_OP( 8, pv.maxu.sc.h, 0xbb3caabe, 0xbb3caabe, 0x157b4655 )
  TEST_RR_OP( 9, pv.maxu.sc.h, 0xffdfff97, 0xffdfff97, 0x836ecb64 )
  TEST_RR_OP( 10, pv.maxu.sc.h, 0xfa86fa86, 0x4aa8cd24, 0xc5a4fa86 )
  TEST_RR_OP( 11, pv.maxu.sc.h, 0xe26ee26e, 0x2da789d4, 0x9d7ae26e )
  TEST_RR_OP( 12, pv.maxu.sc.h, 0x49abc535, 0x26fec535, 0xb8b149ab )
  TEST_RR_OP( 13, pv.maxu.sc.h, 0x5586aea6, 0x5586aea6, 0x616f0a35 )
  TEST_RR_OP( 14, pv.maxu.sc.h, 0x818fc4b4, 0x818fc4b4, 0x16cd3925 )
  TEST_RR_OP( 15, pv.maxu.sc.h, 0xd8424642, 0xd842446c, 0x37724642 )
  TEST_RR_OP( 16, pv.maxu.sc.h, 0x89109db0, 0x31299db0, 0x880f8910 )
  TEST_RR_OP( 17, pv.maxu.sc.h, 0xfe44fe44, 0x6f32f6aa, 0xb32efe44 )
  TEST_RR_OP( 18, pv.maxu.sc.h, 0x2f3543e2, 0x2f3543e2, 0x302b19da )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.maxu.sc.h, 0x98e798e7, 0x2dad66cb, 0x8b2298e7 )
  TEST_RR_SRC1_EQ_DEST( 20, pv.maxu.sc.h, 0xda76da76, 0xcbf7d781, 0x30f6da76 )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.maxu.sc.h, 0xbb9ebb9e, 0x9832244e, 0xa3b4bb9e )
  TEST_RR_SRC2_EQ_DEST( 22, pv.maxu.sc.h, 0x6976e4a5, 0x6976e4a5, 0x4f30460d )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.maxu.sc.h, 0xfb439b1f, 0xfb439b1f )
  TEST_RR_SRC12_EQ_DEST( 24, pv.maxu.sc.h, 0x52122e0d, 0x52122e0d )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.maxu.sc.h, 0xb60468ba, 0xb60468ba, 0xb60468ba )
  TEST_RR_DEST_BYPASS( 44, 1, pv.maxu.sc.h, 0xb925b8ff, 0xb925b8ff, 0xb925b8ff )
  TEST_RR_DEST_BYPASS( 45, 2, pv.maxu.sc.h, 0x76df40cb, 0x76df40cb, 0x76df40cb )
  TEST_RR_DEST_BYPASS( 46, 0, pv.maxu.sc.h, 0x4b324b32, 0x0e124b32, 0x0e124b32 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.maxu.sc.h, 0xf2dee318, 0xf2dee318, 0xf2dee318 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.maxu.sc.h, 0xaa8caa8c, 0x6710aa8c, 0x6710aa8c )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.maxu.sc.h, 0xcbbb4a53, 0xcbbb4a53, 0xc12e0a41 )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.maxu.sc.h, 0xdb82a566, 0xdb82a566, 0xe6850e5c )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.maxu.sc.h, 0xb889b889, 0xb67e8aab, 0xfc9db889 )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.maxu.sc.h, 0xde97c971, 0xde97c971, 0x5e95ae9f )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.maxu.sc.h, 0xad48da46, 0xa538da46, 0xe7bcad48 )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.maxu.sc.h, 0xd9a5d9a5, 0x8d959304, 0x167fd9a5 )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.maxu.sc.h, 0xea73ea73, 0xdb7e69a2, 0xd1b6ea73 )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.maxu.sc.h, 0xd07ce6ef, 0x8532e6ef, 0x11a8d07c )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.maxu.sc.h, 0xfbd0fbd0, 0x41c4f9a2, 0x751efbd0 )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.maxu.sc.h, 0xfdf8fdf8, 0x6f10bbc8, 0x0e85fdf8 )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.maxu.sc.h, 0xb4e0b4e0, 0x11d77515, 0x9977b4e0 )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.maxu.sc.h, 0xc3e6d8da, 0xa5cfd8da, 0xc1c9c3e6 )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.maxu.sc.h, 0xeddceddc, 0x9804083e, 0x49f7eddc )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.maxu.sc.h, 0x820ff9a0, 0x820ff9a0, 0x9eb5549a )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.maxu.sc.h, 0xba81ba81, 0x81f4a8d8, 0x4bd6ba81 )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.maxu.sc.h, 0xedccedcc, 0x205e546b, 0xf712edcc )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.maxu.sc.h, 0xa6faa6fa, 0x753a7ba9, 0xa059a6fa )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.maxu.sc.h, 0xa50ba50b, 0x49dd8587, 0xf03ba50b )
  
  

  TEST_RR_ZEROSRC1( 49, pv.maxu.sc.h, 0xb3f4b3f4, 0xad40b3f4 )
  TEST_RR_ZEROSRC1( 50, pv.maxu.sc.h, 0x3e0e3e0e, 0x68413e0e )
  
  TEST_RR_ZEROSRC2( 51, pv.maxu.sc.h, 0xd73e4e15, 0xd73e4e15 )
  TEST_RR_ZEROSRC2( 52, pv.maxu.sc.h, 0x7b8f6ca0, 0x7b8f6ca0 )
  
  TEST_RR_ZEROSRC12( 53, pv.maxu.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.maxu.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.maxu.sc.h, 0x4d74ba23, 0x0fbb931e )
  TEST_RR_ZERODEST( 56, pv.maxu.sc.h, 0x99b7c26a, 0x8a8e5fa2 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
