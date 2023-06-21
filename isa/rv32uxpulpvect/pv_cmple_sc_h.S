# See LICENSE for license details.

#*****************************************************************************
# pv.cmple.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.cmple.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmple.sc.h, 0x00010001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmple.sc.h, 0x00010000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmple.sc.h, 0x00010000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmple.sc.h, 0x00010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmple.sc.h, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmple.sc.h, 0x00000000, 0xcc5b066b, 0x3b068312 )
  TEST_RR_OP( 8, pv.cmple.sc.h, 0x00010001, 0x55c7839a, 0x6018677e )
  TEST_RR_OP( 9, pv.cmple.sc.h, 0x00000001, 0x7921cefa, 0xd31f2dc4 )
  TEST_RR_OP( 10, pv.cmple.sc.h, 0x00000000, 0xf4380460, 0xaf15ea44 )
  TEST_RR_OP( 11, pv.cmple.sc.h, 0x00010001, 0xace5dfdb, 0x52a661a1 )
  TEST_RR_OP( 12, pv.cmple.sc.h, 0x00010001, 0x690e8bdf, 0xddfb6e89 )
  TEST_RR_OP( 13, pv.cmple.sc.h, 0x00010001, 0x892ee941, 0x38ed793c )
  TEST_RR_OP( 14, pv.cmple.sc.h, 0x00000000, 0x7e2a43ee, 0x65cafb54 )
  TEST_RR_OP( 15, pv.cmple.sc.h, 0x00000000, 0xf42c70f4, 0x087087f7 )
  TEST_RR_OP( 16, pv.cmple.sc.h, 0x00010000, 0x98f36eba, 0xaf1215dd )
  TEST_RR_OP( 17, pv.cmple.sc.h, 0x00000000, 0x039b1916, 0xe16ecfac )
  TEST_RR_OP( 18, pv.cmple.sc.h, 0x00010001, 0x1fa32759, 0xcecb6ebb )
  TEST_RR_OP( 19, pv.cmple.sc.h, 0x00000001, 0x1749bdaa, 0x9f910b21 )
  TEST_RR_OP( 20, pv.cmple.sc.h, 0x00000000, 0x68e60f9f, 0xc09de2ba )
  TEST_RR_OP( 21, pv.cmple.sc.h, 0x00010001, 0xa7ec635e, 0xb8ec777c )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmple.sc.h, 0x00000000, 0x20f1935d, 0xc0968d67 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmple.sc.h, 0x00000000, 0x4f1e2620, 0xfc83f371 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmple.sc.h, 0x00000000, 0x7db38b63, 0x9aec8540 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmple.sc.h, 0x00010001, 0x0c8201a3, 0x0bd33eda )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmple.sc.h, 0x00010001, 0xd17fe684 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmple.sc.h, 0x00010001, 0xeded1f53 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmple.sc.h, 0x00000001, 0x2c48f1f3, 0x2c48f1f3 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmple.sc.h, 0x00010001, 0xfe5a0515, 0xfe5a0515 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmple.sc.h, 0x00000001, 0x77695cd2, 0x77695cd2 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmple.sc.h, 0x00010001, 0x0c413105, 0x0c413105 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmple.sc.h, 0x00010001, 0x03947198, 0x03947198 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmple.sc.h, 0x00000001, 0x5eb13422, 0x5eb13422 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmple.sc.h, 0x00010001, 0xb1b6103c, 0x8be94223 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmple.sc.h, 0x00010001, 0x9a91c276, 0xa6bf28d7 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmple.sc.h, 0x00000001, 0x40e9ef82, 0xce8df629 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmple.sc.h, 0x00010001, 0x34875e41, 0xb4b16198 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmple.sc.h, 0x00000000, 0x542d240d, 0x488cba29 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmple.sc.h, 0x00000000, 0x1f61e6bb, 0xc7b6c3c7 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmple.sc.h, 0x00000000, 0x7d75c77b, 0x692cb5b2 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmple.sc.h, 0x00000001, 0x561098d0, 0x3801c0ce )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmple.sc.h, 0x00000001, 0x399692ef, 0xc140a78a )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmple.sc.h, 0x00000000, 0xf6607653, 0x9d479c72 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmple.sc.h, 0x00000000, 0x46322e8a, 0xe530afa4 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmple.sc.h, 0x00000000, 0x4f9e68e4, 0x8ab8bf3d )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmple.sc.h, 0x00010001, 0xa685b494, 0x35a0283b )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmple.sc.h, 0x00010001, 0x0eae23c1, 0x79cf2c49 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmple.sc.h, 0x00010000, 0x00e24dcd, 0x7d8e3aae )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmple.sc.h, 0x00000000, 0xf45345dc, 0x5139d0eb )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmple.sc.h, 0x00010000, 0xe7985f2d, 0x17e43795 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmple.sc.h, 0x00010001, 0x8290dc42, 0x37054bff )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmple.sc.h, 0x00010001, 0xd9c1520a )
  TEST_RR_ZEROSRC1( 53, pv.cmple.sc.h, 0x00000000, 0x4544bea4 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmple.sc.h, 0x00010000, 0xcf505f69 )
  TEST_RR_ZEROSRC2( 55, pv.cmple.sc.h, 0x00000000, 0x6af7259f )
  
  TEST_RR_ZEROSRC12( 56, pv.cmple.sc.h, 0x00010001 )
  TEST_RR_ZEROSRC12( 57, pv.cmple.sc.h, 0x00010001 )
  
  TEST_RR_ZERODEST( 58, pv.cmple.sc.h, 0x2b1c867c, 0x36bea35b )
  TEST_RR_ZERODEST( 59, pv.cmple.sc.h, 0x661efe77, 0x24b150e0 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
