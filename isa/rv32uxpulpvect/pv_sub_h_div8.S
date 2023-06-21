# See LICENSE for license details.

#*****************************************************************************
# pv.sub.h.div8
#-----------------------------------------------------------------------------
#
# Test pv.sub.h.div8 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sub.h.div8, 0x00000000, 0x00000000, 0x00000000 )
  TEST_RR_OP( 3, pv.sub.h.div8, 0x00000000, 0x80000000, 0x80000000 )
  TEST_RR_OP( 4, pv.sub.h.div8, 0x00000000, 0x80000000, 0x7fffffff )
  TEST_RR_OP( 5, pv.sub.h.div8, 0x00000000, 0x7fffffff, 0x7fffffff )
  TEST_RR_OP( 6, pv.sub.h.div8, 0x0000ffff, 0xffffffbc, 0xffffffbf )
  TEST_RR_OP( 7, pv.sub.h.div8, 0x08000c15, 0x51be1ca7, 0x11bdbbfa )
  TEST_RR_OP( 8, pv.sub.h.div8, 0x0b56f7b3, 0x7cb078f7, 0x21fbbb5a )
  TEST_RR_OP( 9, pv.sub.h.div8, 0xfcaeff8d, 0xe11e8cd7, 0xfba9906d )
  TEST_RR_OP( 10, pv.sub.h.div8, 0xf8070492, 0x362fbbd8, 0x75f69743 )
  TEST_RR_OP( 11, pv.sub.h.div8, 0x05e20ade, 0x9f2ce6fe, 0x7015900d )
  TEST_RR_OP( 12, pv.sub.h.div8, 0xf4050654, 0xa2aab2c0, 0x027f801e )
  TEST_RR_OP( 13, pv.sub.h.div8, 0x02230b31, 0x7962a699, 0x68434d0f )
  TEST_RR_OP( 14, pv.sub.h.div8, 0x0a47f5a3, 0x4b53c47b, 0xf9151763 )
  TEST_RR_OP( 15, pv.sub.h.div8, 0x03340be7, 0x26a2d878, 0x0cfc793e )
  TEST_RR_OP( 16, pv.sub.h.div8, 0x0739f373, 0x07d3d57f, 0xce0439e7 )
  TEST_RR_OP( 17, pv.sub.h.div8, 0xf829f536, 0xc18f2f1e, 0x0043856e )
  TEST_RR_OP( 18, pv.sub.h.div8, 0xfa9cf374, 0x2d5de997, 0x58794df3 )
  TEST_RR_OP( 19, pv.sub.h.div8, 0xf4310629, 0x79f24486, 0xd8641337 )
  TEST_RR_OP( 20, pv.sub.h.div8, 0x07e5f70b, 0x7d283f83, 0x3e00872b )
  TEST_RR_OP( 21, pv.sub.h.div8, 0xf47a06f3, 0x42a02b7d, 0x9ecaf3e5 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.sub.h.div8, 0x0e5df60e, 0x713e477e, 0xfe559709 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.sub.h.div8, 0xfb87ff5c, 0x140f064f, 0x37d60b6c )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.sub.h.div8, 0x0245090d, 0x12ae0afd, 0x0081c28f )
  TEST_RR_SRC2_EQ_DEST( 25, pv.sub.h.div8, 0x0f400724, 0x3d7677da, 0xc3753eb9 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.sub.h.div8, 0x00000000, 0xe07e7cc8 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.sub.h.div8, 0x00000000, 0x1ba1726e )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.sub.h.div8, 0x00000000, 0x62005d68, 0x62005d68 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.sub.h.div8, 0x00000000, 0x54276b83, 0x54276b83 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.sub.h.div8, 0x00000000, 0x77f20d00, 0x77f20d00 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.sub.h.div8, 0x00000000, 0x4ee6b181, 0x4ee6b181 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.sub.h.div8, 0x00000000, 0x623891c0, 0x623891c0 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.sub.h.div8, 0x00000000, 0x69a0e1b3, 0x69a0e1b3 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.sub.h.div8, 0x0cc307a8, 0x00aab83e, 0x9a8e7afa )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.sub.h.div8, 0xfd44ff8d, 0xce94f4f4, 0xe46ef886 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.sub.h.div8, 0xf9a1f8e1, 0x6f37914f, 0xa22fca46 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.sub.h.div8, 0xf16eff7f, 0x3c7ce2f3, 0xb10ce6f8 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.sub.h.div8, 0xfbe60bea, 0xca1e2328, 0xeae7c3d3 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.sub.h.div8, 0xffc00af2, 0xb54a3139, 0xb74ad9a4 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.sub.h.div8, 0x068f06d3, 0x2419b893, 0xef9f81fa )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.sub.h.div8, 0xf4340713, 0x68dc487b, 0xc7360fdc )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.sub.h.div8, 0xf883f2ee, 0x347a88dd, 0x7060f166 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.sub.h.div8, 0x0ca8fe5e, 0xc0ab6955, 0x5b68765f )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.sub.h.div8, 0x0afa09b9, 0x5a7afadd, 0x02a6ad12 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.sub.h.div8, 0xf49ef176, 0xae73bd55, 0x097f319e )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.sub.h.div8, 0x0542010a, 0x07f85b17, 0xdde152c6 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.sub.h.div8, 0x060bfb8e, 0x89a6c4dc, 0x594ce869 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.sub.h.div8, 0x0abb040b, 0x2f486cfc, 0xd9694c9f )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.sub.h.div8, 0x073a03b3, 0x964b9f2c, 0x5c748191 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.sub.h.div8, 0xfbe80043, 0x6d93ec2b, 0x8e51ea0d )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.sub.h.div8, 0x0892068f, 0xcc4b4b79, 0x87b91700 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.sub.h.div8, 0x068cfd8f, 0xcb9e1387 )
  TEST_RR_ZEROSRC1( 53, pv.sub.h.div8, 0xf60ffed4, 0x4f81095f )
  
  TEST_RR_ZEROSRC2( 54, pv.sub.h.div8, 0x089f0b21, 0x44fc590c )
  TEST_RR_ZEROSRC2( 55, pv.sub.h.div8, 0xf3cb0ad5, 0x9e5c56af )
  
  TEST_RR_ZEROSRC12( 56, pv.sub.h.div8, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.sub.h.div8, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.sub.h.div8, 0x3e238341, 0x82eb3afd )
  TEST_RR_ZERODEST( 59, pv.sub.h.div8, 0xe3737be1, 0x8cc6864e )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
