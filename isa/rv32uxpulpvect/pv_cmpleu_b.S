# See LICENSE for license details.

#*****************************************************************************
# pv.cmpleu.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpleu.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpleu.b, 0x01010101, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpleu.b, 0x00010001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpleu.b, 0x01000100, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpleu.b, 0x01010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpleu.b, 0x01000100, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpleu.b, 0x00010000, 0x7c55f4de, 0x455c46d5 )
  TEST_RR_OP( 8, pv.cmpleu.b, 0x00000000, 0xd6f790f8, 0x431b4e09 )
  TEST_RR_OP( 9, pv.cmpleu.b, 0x00000000, 0xd9d1dee1, 0x8a9f97ac )
  TEST_RR_OP( 10, pv.cmpleu.b, 0x01000101, 0x6178129b, 0x9b6134a2 )
  TEST_RR_OP( 11, pv.cmpleu.b, 0x00000100, 0xebeb9ce1, 0x70a1ecd9 )
  TEST_RR_OP( 12, pv.cmpleu.b, 0x01000101, 0x08c325cb, 0xde6425f3 )
  TEST_RR_OP( 13, pv.cmpleu.b, 0x01010000, 0x196fe482, 0xcf993d70 )
  TEST_RR_OP( 14, pv.cmpleu.b, 0x00000001, 0xc357ec8e, 0x8e00d3e3 )
  TEST_RR_OP( 15, pv.cmpleu.b, 0x00000101, 0xa6bb07c5, 0x407032fe )
  TEST_RR_OP( 16, pv.cmpleu.b, 0x00010000, 0xef307cdc, 0xdbe55c34 )
  TEST_RR_OP( 17, pv.cmpleu.b, 0x01010000, 0x169b94eb, 0x56c084d0 )
  TEST_RR_OP( 18, pv.cmpleu.b, 0x01010001, 0x306aaa1c, 0x81bf64aa )
  TEST_RR_OP( 19, pv.cmpleu.b, 0x01010100, 0x1a086491, 0xe1c96e62 )
  TEST_RR_OP( 20, pv.cmpleu.b, 0x00000101, 0xb03b301c, 0x103a67ba )
  TEST_RR_OP( 21, pv.cmpleu.b, 0x01010101, 0x524d95b5, 0xa2dba9c7 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpleu.b, 0x01010101, 0x1c2163a6, 0x6cfba3de )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpleu.b, 0x01010001, 0x986cca2b, 0xd5911b2f )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpleu.b, 0x00000100, 0x429b2fd1, 0x014f6688 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpleu.b, 0x00010101, 0xd750295a, 0xc15bb6aa )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpleu.b, 0x01010101, 0xde0ba8f6 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpleu.b, 0x01010101, 0xe34067df )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpleu.b, 0x01010101, 0x74022ff0, 0x74022ff0 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpleu.b, 0x01010101, 0x482b7ad2, 0x482b7ad2 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpleu.b, 0x01010101, 0x7765b4e5, 0x7765b4e5 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpleu.b, 0x01010101, 0x536e9b04, 0x536e9b04 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpleu.b, 0x01010101, 0xebb7be27, 0xebb7be27 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpleu.b, 0x01010101, 0xce5d614c, 0xce5d614c )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpleu.b, 0x01000001, 0x8fe0bf67, 0xbb9e096d )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpleu.b, 0x00000001, 0xdd0dd7c2, 0x70099de6 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpleu.b, 0x01010100, 0x0b225fbf, 0x6ddc7c57 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpleu.b, 0x01000101, 0xaa921d4e, 0xcc561d84 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpleu.b, 0x00000001, 0x82c3ab59, 0x18830d68 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpleu.b, 0x01000101, 0x3c615506, 0xad5bab33 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpleu.b, 0x01000000, 0x0690998c, 0x3e7d544e )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpleu.b, 0x01000100, 0x1cbe05bd, 0x1f84398b )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpleu.b, 0x01010001, 0x5416b929, 0x983a65e3 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpleu.b, 0x00000100, 0xf335856f, 0x7f04dd37 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpleu.b, 0x00010100, 0xd52cb1d4, 0x3dd9f55b )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpleu.b, 0x00000101, 0xa4aa0ec9, 0x8539e2d3 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpleu.b, 0x01010001, 0x2183b333, 0xeef32746 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpleu.b, 0x00000000, 0x98baa5eb, 0x49ac3b82 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpleu.b, 0x01010000, 0x707a83df, 0x8d874620 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpleu.b, 0x00000101, 0x87298d0d, 0x54098e3f )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpleu.b, 0x00010001, 0x6c254379, 0x68ef229a )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpleu.b, 0x00010100, 0x826c3cab, 0x4a8a7ea8 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpleu.b, 0x01010101, 0xa9e173e1 )
  TEST_RR_ZEROSRC1( 53, pv.cmpleu.b, 0x01010101, 0xa0eaf236 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpleu.b, 0x00000000, 0x5c3046be )
  TEST_RR_ZEROSRC2( 55, pv.cmpleu.b, 0x00000000, 0xac53650e )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpleu.b, 0x01010101 )
  TEST_RR_ZEROSRC12( 57, pv.cmpleu.b, 0x01010101 )
  
  TEST_RR_ZERODEST( 58, pv.cmpleu.b, 0xa92aedd6, 0x1a24740f )
  TEST_RR_ZERODEST( 59, pv.cmpleu.b, 0x992f4142, 0xefec60c4 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
