# See LICENSE for license details.

#*****************************************************************************
# pv.add.h.div4
#-----------------------------------------------------------------------------
#
# Test pv.add.h.div4 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.add.h.div4, 0x00000000, 0x00000000, 0x00000000 )
  TEST_RR_OP( 3, pv.add.h.div4, 0x00000000, 0x80000000, 0x80000000 )
  TEST_RR_OP( 4, pv.add.h.div4, 0xffffffff, 0x80000000, 0x7fffffff )
  TEST_RR_OP( 5, pv.add.h.div4, 0xffffffff, 0x7fffffff, 0x7fffffff )
  TEST_RR_OP( 6, pv.add.h.div4, 0xffffffde, 0xffffffbc, 0xffffffbf )
  TEST_RR_OP( 7, pv.add.h.div4, 0x177cf2de, 0xc34ca671, 0x9aa4250a )
  TEST_RR_OP( 8, pv.add.h.div4, 0x1068f944, 0x1121f038, 0x307ff4da )
  TEST_RR_OP( 9, pv.add.h.div4, 0xecb0f243, 0x5bcdd856, 0x56f6f0b7 )
  TEST_RR_OP( 10, pv.add.h.div4, 0xe340fcca, 0xff7a3846, 0x8d89bae5 )
  TEST_RR_OP( 11, pv.add.h.div4, 0x0764f3f1, 0x6d7d1e57, 0xb013b16e )
  TEST_RR_OP( 12, pv.add.h.div4, 0xe14ae296, 0x0fa4073c, 0x7586831f )
  TEST_RR_OP( 13, pv.add.h.div4, 0x066df355, 0x85a4cf86, 0x9410fdd1 )
  TEST_RR_OP( 14, pv.add.h.div4, 0x11fe16ad, 0x59f706cb, 0xee0153ea )
  TEST_RR_OP( 15, pv.add.h.div4, 0xea8000cc, 0x7f329eb7, 0x2acf647a )
  TEST_RR_OP( 16, pv.add.h.div4, 0x000c02e4, 0x118d157c, 0xeea4f616 )
  TEST_RR_OP( 17, pv.add.h.div4, 0x07880878, 0x56f338cd, 0xc730e913 )
  TEST_RR_OP( 18, pv.add.h.div4, 0x09e4e3ce, 0xa9d1d94b, 0x7dc2b5ee )
  TEST_RR_OP( 19, pv.add.h.div4, 0xeffce699, 0x96dd3879, 0x291661ed )
  TEST_RR_OP( 20, pv.add.h.div4, 0xfe9905c5, 0xa4419b50, 0x56267bc5 )
  TEST_RR_OP( 21, pv.add.h.div4, 0xf77fe314, 0xdd44f0f1, 0x00ba9b60 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.add.h.div4, 0xf86e17f7, 0xc6960ee2, 0x1b2250fb )
  TEST_RR_SRC1_EQ_DEST( 23, pv.add.h.div4, 0xe3f11d8d, 0xdfa47c97, 0xb022f9a0 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.add.h.div4, 0x020be23f, 0x6219da04, 0xa614aef8 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.add.h.div4, 0xff5713ec, 0xbc4c26d7, 0x411228db )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.add.h.div4, 0x0fafed74, 0x9f5fdae8 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.add.h.div4, 0xea45f35c, 0xd48b66b8 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.add.h.div4, 0x1e67ebbe, 0xbccf577d, 0xbccf577d )
  TEST_RR_DEST_BYPASS( 47, 1, pv.add.h.div4, 0x069df1b1, 0x0d3a6363, 0x0d3a6363 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.add.h.div4, 0xe2720018, 0x44e48031, 0x44e48031 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.add.h.div4, 0xf6cbf344, 0xed966689, 0xed966689 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.add.h.div4, 0xeffced69, 0x5ff95ad3, 0x5ff95ad3 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.add.h.div4, 0x1f80fc33, 0x3f017866, 0x3f017866 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.add.h.div4, 0x08db1e09, 0xf110ae5b, 0x325cc9c9 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.add.h.div4, 0x06a9f291, 0x0830784b, 0x127651f9 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.add.h.div4, 0xf4b20c8e, 0xbc84fb1d, 0x1646371e )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.add.h.div4, 0xfad9f347, 0x17ab634a, 0xd3b969d3 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.add.h.div4, 0x02ca164b, 0xcd93f0c8, 0x3d976866 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.add.h.div4, 0x093de230, 0x05d41658, 0x1f21726a )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.add.h.div4, 0xe3240805, 0xa223bbf0, 0xea6f6427 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.add.h.div4, 0xfdf0e7ac, 0x074d20c8, 0xf0747dea )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.add.h.div4, 0x029516a5, 0xb276b9ff, 0x57dea096 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.add.h.div4, 0x10fefa8e, 0xf3891127, 0x506fd912 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.add.h.div4, 0xeb2de51f, 0x7a2dab4b, 0x3287e933 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.add.h.div4, 0xfc90e893, 0xb1e0263c, 0x40637c12 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.add.h.div4, 0x1ea2e7b6, 0xa0ac5550, 0xd9df498b )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.add.h.div4, 0xfc36f9e3, 0x39ca3f84, 0xb70fa808 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.add.h.div4, 0x0a33e785, 0x92ee7053, 0x95de2dc4 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.add.h.div4, 0xf6e109bf, 0xbcf04f20, 0x1e97d7df )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.add.h.div4, 0x0395fe46, 0xe0de05a8, 0x2d77f373 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.add.h.div4, 0x190f0d82, 0xbae603ba, 0xa9563251 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.add.h.div4, 0x089407db, 0x22511f6c )
  TEST_RR_ZEROSRC1( 53, pv.add.h.div4, 0x0992ff59, 0x2649fd65 )
  
  TEST_RR_ZEROSRC2( 54, pv.add.h.div4, 0x1daae0de, 0x76a98378 )
  TEST_RR_ZEROSRC2( 55, pv.add.h.div4, 0x15e0e258, 0x57838961 )
  
  TEST_RR_ZEROSRC12( 56, pv.add.h.div4, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.add.h.div4, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.add.h.div4, 0xcda3b2e8, 0x73b609d8 )
  TEST_RR_ZERODEST( 59, pv.add.h.div4, 0xfedce48c, 0x7c9725f4 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
