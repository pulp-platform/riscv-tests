# See LICENSE for license details.

#*****************************************************************************
# pv.sub.h.div4
#-----------------------------------------------------------------------------
#
# Test pv.sub.h.div4 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sub.h.div4, 0x00000000, 0x00000000, 0x00000000 )
  TEST_RR_OP( 3, pv.sub.h.div4, 0x00000000, 0x80000000, 0x80000000 )
  TEST_RR_OP( 4, pv.sub.h.div4, 0x00000000, 0x80000000, 0x7fffffff )
  TEST_RR_OP( 5, pv.sub.h.div4, 0x00000000, 0x7fffffff, 0x7fffffff )
  TEST_RR_OP( 6, pv.sub.h.div4, 0x0000ffff, 0xffffffbc, 0xffffffbf )
  TEST_RR_OP( 7, pv.sub.h.div4, 0xe5adf9b8, 0x36eb1b56, 0xa0343475 )
  TEST_RR_OP( 8, pv.sub.h.div4, 0x147100d8, 0x325f1dba, 0xe09a1a59 )
  TEST_RR_OP( 9, pv.sub.h.div4, 0xe71efd6c, 0x56aa8c93, 0xba3196e2 )
  TEST_RR_OP( 10, pv.sub.h.div4, 0xea28e841, 0x8ee41edc, 0xe6437dd7 )
  TEST_RR_OP( 11, pv.sub.h.div4, 0x07c21da4, 0x581d76a1, 0x39120011 )
  TEST_RR_OP( 12, pv.sub.h.div4, 0xfc23e307, 0xc250b9af, 0xd1c22d93 )
  TEST_RR_OP( 13, pv.sub.h.div4, 0x18bf0448, 0x62575178, 0xff584058 )
  TEST_RR_OP( 14, pv.sub.h.div4, 0xf6c0efa2, 0x1a01b17d, 0x3f01f2f5 )
  TEST_RR_OP( 15, pv.sub.h.div4, 0xfadff558, 0xf6353e19, 0x0ab868b6 )
  TEST_RR_OP( 16, pv.sub.h.div4, 0x0b340e27, 0xdafc4d20, 0xae2c1481 )
  TEST_RR_OP( 17, pv.sub.h.div4, 0x02730b2d, 0x9b75249a, 0x91a8f7e4 )
  TEST_RR_OP( 18, pv.sub.h.div4, 0xe1fc13d7, 0x96790658, 0x0e88b6fa )
  TEST_RR_OP( 19, pv.sub.h.div4, 0xe426f47b, 0xd938c280, 0x48a0f093 )
  TEST_RR_OP( 20, pv.sub.h.div4, 0x11f4f49f, 0x578a4400, 0x0fb87182 )
  TEST_RR_OP( 21, pv.sub.h.div4, 0x0e3fe1eb, 0xc5e9adf3, 0x8ceb2646 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.sub.h.div4, 0xe32819cd, 0x1bcfe639, 0x8f2e7f05 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.sub.h.div4, 0x0d5e0cae, 0x8c971ebf, 0x571dec04 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.sub.h.div4, 0xe6ad0bd8, 0xdd1fb0d7, 0x42688175 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.sub.h.div4, 0xfd420dfe, 0x8554cde7, 0x904995ec )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.sub.h.div4, 0x00000000, 0x32cf2d6a )
  TEST_RR_SRC12_EQ_DEST( 27, pv.sub.h.div4, 0x00000000, 0x114d29f6 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.sub.h.div4, 0x00000000, 0x4fd8d759, 0x4fd8d759 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.sub.h.div4, 0x00000000, 0xc3ff02a9, 0xc3ff02a9 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.sub.h.div4, 0x00000000, 0x76e13df9, 0x76e13df9 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.sub.h.div4, 0x00000000, 0xa39b9646, 0xa39b9646 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.sub.h.div4, 0x00000000, 0x24d7fd4c, 0x24d7fd4c )
  TEST_RR_DEST_BYPASS( 51, 2, pv.sub.h.div4, 0x00000000, 0x044ffa32, 0x044ffa32 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.sub.h.div4, 0x02b0fcc3, 0xa94737dd, 0x9e8444ce )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.sub.h.div4, 0x16981c92, 0x91d54904, 0x3774d6bb )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.sub.h.div4, 0xfdfc06f2, 0x7b364079, 0x834324b0 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.sub.h.div4, 0xe69cfc50, 0x300ec42e, 0x959bd2ec )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.sub.h.div4, 0xff1d1644, 0x522a49d3, 0x55b3f0c0 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.sub.h.div4, 0xe01ff299, 0x5c02b8cf, 0xdb85ee6a )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.sub.h.div4, 0x18c5eac2, 0xbbab4027, 0x5894951e )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.sub.h.div4, 0x1a18fa09, 0x25dd4b65, 0xbd7a633f )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.sub.h.div4, 0xecd4e23a, 0x10835dc1, 0x5d32d4d8 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.sub.h.div4, 0x139fe2a3, 0x384013f1, 0xe9c18963 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.sub.h.div4, 0x1c53e8fa, 0x746b7d53, 0x031cd968 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.sub.h.div4, 0xe9b2150d, 0x5641849b, 0xaf793066 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.sub.h.div4, 0xff0dfb89, 0x4cc3f7ed, 0x508d09c7 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.sub.h.div4, 0xfa5c1fca, 0x54ed4ba8, 0x6b7dcc7e )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.sub.h.div4, 0x11e5e164, 0x5bf5e74e, 0x146161bc )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.sub.h.div4, 0xf1fe0535, 0xabc25086, 0xe3c73bb1 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.sub.h.div4, 0x1fd8fa9e, 0x4fd0abb6, 0xd06ec13c )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.sub.h.div4, 0xe6ff11f1, 0xe61db6ab, 0x4a206ee5 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.sub.h.div4, 0xe0e104ce, 0x7c7aecc8 )
  TEST_RR_ZEROSRC1( 53, pv.sub.h.div4, 0x19b80a3b, 0x991ed712 )
  
  TEST_RR_ZEROSRC2( 54, pv.sub.h.div4, 0x16df1ba1, 0x5b7d6e87 )
  TEST_RR_ZEROSRC2( 55, pv.sub.h.div4, 0x07bd0007, 0x1ef4001e )
  
  TEST_RR_ZEROSRC12( 56, pv.sub.h.div4, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.sub.h.div4, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.sub.h.div4, 0xf550cf4e, 0x5f19c425 )
  TEST_RR_ZERODEST( 59, pv.sub.h.div4, 0x8b4278b6, 0x5eb4a75f )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
