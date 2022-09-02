# See LICENSE for license details.

#*****************************************************************************
# pv.sub.h.div2
#-----------------------------------------------------------------------------
#
# Test pv.sub.h.div2 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sub.h.div2, 0x00000000, 0x00000000, 0x00000000 )
  TEST_RR_OP( 3, pv.sub.h.div2, 0x00000000, 0x80000000, 0x80000000 )
  TEST_RR_OP( 4, pv.sub.h.div2, 0xffffffff, 0x7fffffff, 0x80000000 )
  TEST_RR_OP( 5, pv.sub.h.div2, 0x00000000, 0x80000000, 0x7fffffff )
  TEST_RR_OP( 6, pv.sub.h.div2, 0x00000000, 0x7fffffff, 0x7fffffff )
  TEST_RR_OP( 7, pv.sub.h.div2, 0x0000fffe, 0xffffffbc, 0xffffffbf )
  TEST_RR_OP( 8, pv.sub.h.div2, 0xc3a70d8a, 0x5658f33d, 0xcf09d828 )
  TEST_RR_OP( 9, pv.sub.h.div2, 0xfe7c0138, 0x6404747c, 0x670c720c )
  TEST_RR_OP( 10, pv.sub.h.div2, 0x393fee6f, 0x15433f00, 0xa2c56221 )
  TEST_RR_OP( 11, pv.sub.h.div2, 0x2caf167c, 0xaa71b83c, 0x51128b43 )
  TEST_RR_OP( 12, pv.sub.h.div2, 0x18f1e1be, 0x07081f71, 0xd5255bf5 )
  TEST_RR_OP( 13, pv.sub.h.div2, 0x25bfc10b, 0xa5f7dd50, 0x5a785b3a )
  TEST_RR_OP( 14, pv.sub.h.div2, 0xe779262e, 0xc4669821, 0xf5744bc5 )
  TEST_RR_OP( 15, pv.sub.h.div2, 0xc4c6f1dd, 0x163d5bed, 0x8cb17832 )
  TEST_RR_OP( 16, pv.sub.h.div2, 0xceabdba8, 0x52e351bb, 0xb58d9a6b )
  TEST_RR_OP( 17, pv.sub.h.div2, 0x1446d343, 0xf2e54031, 0xca5899aa )
  TEST_RR_OP( 18, pv.sub.h.div2, 0x0052dd8b, 0xd7dbd385, 0xd737186e )
  TEST_RR_OP( 19, pv.sub.h.div2, 0xee780a0a, 0xb76c3d43, 0xda7c292f )
  TEST_RR_OP( 20, pv.sub.h.div2, 0x3f5afc6a, 0xea1c27a0, 0x6b672ecb )
  TEST_RR_OP( 21, pv.sub.h.div2, 0xd9cbfd81, 0x497fdfe5, 0x95e8e4e2 )
  TEST_RR_OP( 22, pv.sub.h.div2, 0xc95bc2b5, 0x4d866a11, 0xbad0e4a7 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 23, pv.sub.h.div2, 0x1313eea7, 0x44729c0b, 0x1e4cbebc )
  TEST_RR_SRC1_EQ_DEST( 24, pv.sub.h.div2, 0x3d65c61c, 0x6cc60232, 0xf1fb75f9 )
  
  TEST_RR_SRC2_EQ_DEST( 25, pv.sub.h.div2, 0x1d4c0fa5, 0x754532aa, 0x3aac135f )
  TEST_RR_SRC2_EQ_DEST( 26, pv.sub.h.div2, 0xee72e924, 0x9d837a88, 0xc09fa840 )
  
  TEST_RR_SRC12_EQ_DEST( 27, pv.sub.h.div2, 0x00000000, 0x242a9a08 )
  TEST_RR_SRC12_EQ_DEST( 28, pv.sub.h.div2, 0x00000000, 0xad8cb2ee )
  
  TEST_RR_DEST_BYPASS( 47, 0, pv.sub.h.div2, 0x00000000, 0x5c34788d, 0x5c34788d )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sub.h.div2, 0x00000000, 0xe3aa93c2, 0xe3aa93c2 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sub.h.div2, 0x00000000, 0x3217c879, 0x3217c879 )
  TEST_RR_DEST_BYPASS( 50, 0, pv.sub.h.div2, 0x00000000, 0x5338b29e, 0x5338b29e )
  TEST_RR_DEST_BYPASS( 51, 1, pv.sub.h.div2, 0x00000000, 0x509a77d7, 0x509a77d7 )
  TEST_RR_DEST_BYPASS( 52, 2, pv.sub.h.div2, 0x00000000, 0xef78a9d3, 0xef78a9d3 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 29, 0, 0, pv.sub.h.div2, 0x22dbe3c3, 0x893f88c6, 0x4388c13f )
  TEST_RR_SRC12_BYPASS( 30, 0, 1, pv.sub.h.div2, 0xd4f3f427, 0xd4806e6f, 0x2a9a8621 )
  TEST_RR_SRC12_BYPASS( 31, 0, 2, pv.sub.h.div2, 0xc0bb39ed, 0x9423b628, 0x12ad424e )
  TEST_RR_SRC12_BYPASS( 32, 1, 0, pv.sub.h.div2, 0xfab030bc, 0xd68deae5, 0xe12c896c )
  TEST_RR_SRC12_BYPASS( 33, 1, 1, pv.sub.h.div2, 0xfbcae949, 0xf2c1afa3, 0xfb2cdd11 )
  TEST_RR_SRC12_BYPASS( 34, 1, 2, pv.sub.h.div2, 0xe9aff5aa, 0xa67b77c0, 0xd31d8c6c )
  TEST_RR_SRC12_BYPASS( 35, 2, 0, pv.sub.h.div2, 0x327cff1c, 0x34317dbc, 0xcf397f83 )
  TEST_RR_SRC12_BYPASS( 36, 2, 1, pv.sub.h.div2, 0xca990fd8, 0xf4599d4a, 0x5f267d99 )
  TEST_RR_SRC12_BYPASS( 37, 2, 2, pv.sub.h.div2, 0x059a3642, 0xfd7f75ae, 0xf24a0929 )
  TEST_RR_SRC12_BYPASS( 38, 0, 0, pv.sub.h.div2, 0xdb9227fa, 0x7d6f8f03, 0xc64a3f0f )
  TEST_RR_SRC12_BYPASS( 39, 0, 1, pv.sub.h.div2, 0xeaeb3a77, 0x860b9909, 0xb035241a )
  TEST_RR_SRC12_BYPASS( 40, 0, 2, pv.sub.h.div2, 0x1b22f143, 0xe1445a24, 0xaaff779d )
  TEST_RR_SRC12_BYPASS( 41, 1, 0, pv.sub.h.div2, 0x3ac026b9, 0x26b23e91, 0xb131f11e )
  TEST_RR_SRC12_BYPASS( 42, 1, 1, pv.sub.h.div2, 0xebb20556, 0x42968d79, 0x6b3182cd )
  TEST_RR_SRC12_BYPASS( 43, 1, 2, pv.sub.h.div2, 0xdf2c03e0, 0xece0e5eb, 0x2e87de2a )
  TEST_RR_SRC12_BYPASS( 44, 2, 0, pv.sub.h.div2, 0xf829d1fe, 0x86b10bc8, 0x965e67cc )
  TEST_RR_SRC12_BYPASS( 45, 2, 1, pv.sub.h.div2, 0x0a26c92d, 0x24d77095, 0x108ade3a )
  TEST_RR_SRC12_BYPASS( 46, 2, 2, pv.sub.h.div2, 0x2acde856, 0x0c688720, 0xb6ceb674 )
  
  

  TEST_RR_ZEROSRC1( 53, pv.sub.h.div2, 0x2e1b19c6, 0xa3cacc73 )
  TEST_RR_ZEROSRC1( 54, pv.sub.h.div2, 0x2ea4c9cc, 0xa2b86c67 )
  
  TEST_RR_ZEROSRC2( 55, pv.sub.h.div2, 0x388b27a8, 0x71174f51 )
  TEST_RR_ZEROSRC2( 56, pv.sub.h.div2, 0x2616eb64, 0x4c2dd6c9 )
  
  TEST_RR_ZEROSRC12( 57, pv.sub.h.div2, 0x00000000 )
  TEST_RR_ZEROSRC12( 58, pv.sub.h.div2, 0x00000000 )
  
  TEST_RR_ZERODEST( 59, pv.sub.h.div2, 0x76813e9e, 0x77ae14a1 )
  TEST_RR_ZERODEST( 60, pv.sub.h.div2, 0x6074fa54, 0x06f87864 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
