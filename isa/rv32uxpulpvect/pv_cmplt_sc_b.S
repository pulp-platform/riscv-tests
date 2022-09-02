# See LICENSE for license details.

#*****************************************************************************
# pv.cmplt.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.cmplt.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmplt.sc.b, 0x01010100, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmplt.sc.b, 0x01010100, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmplt.sc.b, 0x01010100, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmplt.sc.b, 0x01000000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmplt.sc.b, 0x01010000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmplt.sc.b, 0x01000100, 0x8870bbf2, 0x65b6bfc7 )
  TEST_RR_OP( 8, pv.cmplt.sc.b, 0x00000100, 0x181c8045, 0xb02888aa )
  TEST_RR_OP( 9, pv.cmplt.sc.b, 0x00000000, 0x7e6dd34d, 0x9b1d9dc8 )
  TEST_RR_OP( 10, pv.cmplt.sc.b, 0x00000000, 0xe8fd37ca, 0x19612789 )
  TEST_RR_OP( 11, pv.cmplt.sc.b, 0x00000100, 0x4160ab48, 0x06484bc4 )
  TEST_RR_OP( 12, pv.cmplt.sc.b, 0x01010100, 0xe4e6bc0e, 0x4c5af2f0 )
  TEST_RR_OP( 13, pv.cmplt.sc.b, 0x01010101, 0x56e4fee3, 0xd3519563 )
  TEST_RR_OP( 14, pv.cmplt.sc.b, 0x01000101, 0x084cf085, 0xd60f3533 )
  TEST_RR_OP( 15, pv.cmplt.sc.b, 0x01000000, 0x866b2855, 0x25918489 )
  TEST_RR_OP( 16, pv.cmplt.sc.b, 0x01000100, 0x956d8d43, 0x7847c32a )
  TEST_RR_OP( 17, pv.cmplt.sc.b, 0x00000100, 0x7a7a8f74, 0x7b472223 )
  TEST_RR_OP( 18, pv.cmplt.sc.b, 0x00000000, 0xd94dd82c, 0x8c3e8b85 )
  TEST_RR_OP( 19, pv.cmplt.sc.b, 0x01010100, 0xe69ecd14, 0x3088c3f1 )
  TEST_RR_OP( 20, pv.cmplt.sc.b, 0x00000000, 0x5ee20dc8, 0x4323cac7 )
  TEST_RR_OP( 21, pv.cmplt.sc.b, 0x01010001, 0x19ec771c, 0xd5c1324a )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmplt.sc.b, 0x01000100, 0x8a71007e, 0x211a8425 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmplt.sc.b, 0x00000001, 0x375d1e90, 0x81d7e013 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmplt.sc.b, 0x01010000, 0xf9ec4a3d, 0x42a4b013 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmplt.sc.b, 0x01010101, 0xb9832ba0, 0x7b29133f )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmplt.sc.b, 0x01010100, 0xf4230024 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmplt.sc.b, 0x00000000, 0xd64943b6 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmplt.sc.b, 0x01000100, 0xed5eb915, 0xed5eb915 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmplt.sc.b, 0x00010100, 0x38a5f722, 0x38a5f722 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmplt.sc.b, 0x00000000, 0x43bf0096, 0x43bf0096 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmplt.sc.b, 0x00010000, 0x5a166a4e, 0x5a166a4e )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmplt.sc.b, 0x00010000, 0x7294f7cf, 0x7294f7cf )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmplt.sc.b, 0x00010000, 0xe49e0acc, 0xe49e0acc )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmplt.sc.b, 0x00000001, 0x71504786, 0x7fcb3939 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmplt.sc.b, 0x00000000, 0x7dbb3ac5, 0x33aa4b90 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmplt.sc.b, 0x00000001, 0x6c7fe6a4, 0x3a9ef5ab )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmplt.sc.b, 0x01010101, 0xf288dd90, 0xc68d1f58 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmplt.sc.b, 0x00000000, 0x5c0262cd, 0x4927218c )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmplt.sc.b, 0x01010100, 0xeb044172, 0x26cc644c )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmplt.sc.b, 0x00000001, 0x2730ceae, 0xe96e9db9 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmplt.sc.b, 0x01000101, 0xbc2fc78e, 0xf0a5d1f4 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmplt.sc.b, 0x00000001, 0x1e1f27c0, 0xeb0f17dd )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmplt.sc.b, 0x01010001, 0x1a3a5014, 0xe6e5973d )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmplt.sc.b, 0x01010101, 0x46c4c0ce, 0x9f6f137a )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmplt.sc.b, 0x00000000, 0x125b701f, 0x4ad259c0 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmplt.sc.b, 0x01010101, 0xe0fcd106, 0xa5c2b852 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmplt.sc.b, 0x00010000, 0xdb8336fb, 0xa28f12b0 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmplt.sc.b, 0x01010100, 0xbc12227e, 0x0b54f466 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmplt.sc.b, 0x01010000, 0x9e9d3952, 0x6f0c3933 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmplt.sc.b, 0x00000001, 0x5f6461c1, 0x0aa6b114 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmplt.sc.b, 0x00000000, 0x06edfe86, 0x89e86f80 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmplt.sc.b, 0x00000000, 0x39aba5dd )
  TEST_RR_ZEROSRC1( 53, pv.cmplt.sc.b, 0x00000000, 0xa8f449c4 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmplt.sc.b, 0x01000001, 0x882314f9 )
  TEST_RR_ZEROSRC2( 55, pv.cmplt.sc.b, 0x00000101, 0x0c3185fc )
  
  TEST_RR_ZEROSRC12( 56, pv.cmplt.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmplt.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmplt.sc.b, 0x36c5da43, 0xd096b5f2 )
  TEST_RR_ZERODEST( 59, pv.cmplt.sc.b, 0xc24666bb, 0x4204bc3a )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
