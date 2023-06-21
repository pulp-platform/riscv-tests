# See LICENSE for license details.

#*****************************************************************************
# pv.sra.h
#-----------------------------------------------------------------------------
#
# Test pv.sra.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sra.h, 0x00080000, 0x40000000, 0xaabbcdff )
  TEST_RR_OP( 3, pv.sra.h, 0xfff00000, 0x80000000, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.sra.h, 0x00080000, 0x40000000, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.sra.h, 0x35ee003a, 0x6bdc3af0, 0xb631f9e8 )
  TEST_RR_OP( 6, pv.sra.h, 0x01820000, 0x182c300b, 0xc4945c4f )
  TEST_RR_OP( 7, pv.sra.h, 0x0003fff8, 0x3d2d87f9, 0x7d4c663c )
  TEST_RR_OP( 8, pv.sra.h, 0xffff4dff, 0xafeb4dff, 0x998f7d90 )
  TEST_RR_OP( 9, pv.sra.h, 0x097deec3, 0x4befdd86, 0xa8f39a51 )
  TEST_RR_OP( 10, pv.sra.h, 0x0f66e4e1, 0x3d9b9384, 0x6df2e712 )
  TEST_RR_OP( 11, pv.sra.h, 0x04770003, 0x11de6fda, 0x6d22974d )
  TEST_RR_OP( 12, pv.sra.h, 0x00db0000, 0x1b612f5e, 0x15d540ef )
  TEST_RR_OP( 13, pv.sra.h, 0xfff90b02, 0xce3b5812, 0x4bebe5c3 )
  TEST_RR_OP( 14, pv.sra.h, 0xffcf0596, 0xcfd82cb7, 0x5668dee3 )
  TEST_RR_OP( 15, pv.sra.h, 0x1e9f0b70, 0x7a7e2dc1, 0xbd725962 )
  TEST_RR_OP( 16, pv.sra.h, 0xa3c8fffe, 0xa3c8ec31, 0x4dc0fd8c )
  TEST_RR_OP( 17, pv.sra.h, 0xcaa33c90, 0xcaa37921, 0x7ad0f701 )
  TEST_RR_OP( 18, pv.sra.h, 0xff94d62e, 0x94c4ac5d, 0x9818bf31 )
  TEST_RR_OP( 19, pv.sra.h, 0xfffeff4e, 0xa329a76f, 0xa2aebcc7 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sra.h, 0xfffcff03, 0x8d5bf03e, 0x87dd3eb4 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sra.h, 0xff79ffc3, 0xbcf1c3c3, 0xa6172208 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sra.h, 0xfe190225, 0xc33b2259, 0xcac5da54 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sra.h, 0x00360322, 0x1b173220, 0x91d71f64 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sra.h, 0x0fc2004c, 0x7e131336 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sra.h, 0xfffeffff, 0xa6befcac )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sra.h, 0xffffffff, 0xf6ced19f, 0xf6ced19f )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sra.h, 0x75d0ffff, 0x75d0e4ff, 0x75d0e4ff )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sra.h, 0xf7122320, 0xb8932320, 0xb8932320 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sra.h, 0x0000ff59, 0x186faca7, 0x186faca7 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sra.h, 0x0000ffc2, 0x6bff8409, 0x6bff8409 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sra.h, 0x07a7e024, 0x7a748092, 0x7a748092 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sra.h, 0x00050002, 0x54d6579d, 0x439cb61d )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sra.h, 0x0001fffc, 0x658498ad, 0x0b6e62cd )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sra.h, 0x02f28818, 0x17948818, 0xcdb35620 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sra.h, 0xe8610069, 0xd0c234ee, 0x46e16707 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sra.h, 0xffeaffbf, 0xa958dfad, 0xfffa3e97 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sra.h, 0x363cfffe, 0x6c79bce3, 0xb1a1f42e )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sra.h, 0xffff0001, 0xf59c1ab9, 0xf8ace2ec )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sra.h, 0xffff0002, 0xd1345bc3, 0x80fff0cd )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sra.h, 0xffd0ffff, 0xa1b0d86f, 0x0c99ccff )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sra.h, 0xfecfffe8, 0xd9fca09b, 0xbde561da )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sra.h, 0x00000000, 0x38cc14d8, 0x391f30ee )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sra.h, 0x077fffcb, 0x77f9cb36, 0xbd749e18 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sra.h, 0x001f0001, 0x3e4f784e, 0x37b9976e )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sra.h, 0x00010003, 0x75e967b6, 0x307e8c7d )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sra.h, 0x0014346a, 0x523768d4, 0xf8baeb01 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sra.h, 0x000d001b, 0x0d501b3d, 0x4988bb48 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sra.h, 0xfffb0001, 0xbba313e6, 0x34bc7e2c )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sra.h, 0x00000019, 0x00c9674a, 0xb70f172a )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sra.h, 0x00000000, 0x73c92e9d )
  TEST_RR_ZEROSRC1( 51, pv.sra.h, 0x00000000, 0x70a5aba3 )
  
  TEST_RR_ZEROSRC2( 52, pv.sra.h, 0x6e1deb5a, 0x6e1deb5a )
  TEST_RR_ZEROSRC2( 53, pv.sra.h, 0x3bc21f3d, 0x3bc21f3d )
  
  TEST_RR_ZEROSRC12( 54, pv.sra.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sra.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sra.h, 0x9bf05c68, 0xc094d3a0 )
  TEST_RR_ZERODEST( 57, pv.sra.h, 0xa066211c, 0xd5fea302 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
