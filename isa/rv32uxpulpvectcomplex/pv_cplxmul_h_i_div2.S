# See LICENSE for license details.

#*****************************************************************************
# pv.cplxmul.h.i.div2
#-----------------------------------------------------------------------------
#
# Test pv.cplxmul.h.i.div2 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.cplxmul.h.i.div2, 0x19195678, 0x55667788, 0x11223344, 0x12345678 )
  TEST_RRR_OP( 3, pv.cplxmul.h.i.div2, 0x19195678, 0x11223344, 0x55667788, 0x12345678 )
  TEST_RRR_OP( 4, pv.cplxmul.h.i.div2, 0x80005678, 0x80008000, 0x80008000, 0x12345678 )
  TEST_RRR_OP( 5, pv.cplxmul.h.i.div2, 0x7fff5678, 0x7fff8000, 0x80007fff, 0x12345678 )
  TEST_RRR_OP( 6, pv.cplxmul.h.i.div2, 0x16abfc25, 0x8c609d46, 0xfcc4d091, 0xc02ffc25 )
  TEST_RRR_OP( 7, pv.cplxmul.h.i.div2, 0x264b43d7, 0x4d0c1c0a, 0x63d05aea, 0x821043d7 )
  TEST_RRR_OP( 8, pv.cplxmul.h.i.div2, 0x1cc2e121, 0xecd7bc02, 0x9e09db5d, 0xdd5be121 )
  TEST_RRR_OP( 9, pv.cplxmul.h.i.div2, 0x14477383, 0x1e484d7b, 0x4a25edbc, 0x00aa7383 )
  TEST_RRR_OP( 10, pv.cplxmul.h.i.div2, 0x0feddebf, 0x6500c62b, 0xb8d0ff9b, 0x0e98debf )
  TEST_RRR_OP( 11, pv.cplxmul.h.i.div2, 0xfc9b233f, 0x91604c9d, 0x07660cfa, 0x81ca233f )
  TEST_RRR_OP( 12, pv.cplxmul.h.i.div2, 0xd036deee, 0x60c9def0, 0x5fb2a24b, 0xc648deee )
  TEST_RRR_OP( 13, pv.cplxmul.h.i.div2, 0xe87a906d, 0x3f9b93e0, 0x61894722, 0xbb08906d )
  TEST_RRR_OP( 14, pv.cplxmul.h.i.div2, 0x05b188ff, 0x085a3b20, 0x2189c123, 0xb92b88ff )
  TEST_RRR_OP( 15, pv.cplxmul.h.i.div2, 0x05ac3187, 0x0c8e0620, 0xf85c7775, 0xb32b3187 )
  TEST_RRR_OP( 16, pv.cplxmul.h.i.div2, 0xe46b070d, 0xd73f5ffe, 0x8b459a4b, 0x24b2070d )
  TEST_RRR_OP( 17, pv.cplxmul.h.i.div2, 0x0a044997, 0xcb22a6a5, 0xe81af7e2, 0x7bee4997 )
  TEST_RRR_OP( 18, pv.cplxmul.h.i.div2, 0x04a1f92a, 0x0d5ce61b, 0xc18cdfb4, 0xfc63f92a )
  TEST_RRR_OP( 19, pv.cplxmul.h.i.div2, 0x02cc7bd1, 0x0b5dfbe0, 0x56345e50, 0xd4b57bd1 )
  TEST_RRR_OP( 20, pv.cplxmul.h.i.div2, 0xc42d8a2a, 0x4f186f96, 0x9617d3ca, 0xf4a48a2a )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 21, pv.cplxmul.h.i.div2, 0xf49629f8, 0x38cf29f8, 0x40089d46 )
  TEST_RRR_SRC1_EQ_DEST( 22, pv.cplxmul.h.i.div2, 0xf085f42f, 0xb0b3f42f, 0xb6383cf5 )
  
  TEST_RRR_SRC2_EQ_DEST( 23, pv.cplxmul.h.i.div2, 0xf941d06b, 0x27571d31, 0x04f8d06b )
  TEST_RRR_SRC2_EQ_DEST( 24, pv.cplxmul.h.i.div2, 0x37778f65, 0xbc3c3e2d, 0x69a78f65 )
  
  TEST_RRR_SRC12_EQ_DEST( 25, pv.cplxmul.h.i.div2, 0x21065c41, 0x2dd25c41 )
  TEST_RRR_SRC12_EQ_DEST( 26, pv.cplxmul.h.i.div2, 0xf20f2eba, 0xd9d02eba )
  
  TEST_RRR_DEST_BYPASS( 45, 0, pv.cplxmul.h.i.div2, 0xe21ede66, 0x93deffe1, 0x932d46dc, 0x6fcbde66 )
  TEST_RRR_DEST_BYPASS( 46, 1, pv.cplxmul.h.i.div2, 0xee24c2f6, 0x1f4b41e5, 0xe13eaeb2, 0xcdf5c2f6 )
  TEST_RRR_DEST_BYPASS( 47, 2, pv.cplxmul.h.i.div2, 0x1f7e597d, 0x84f4ce88, 0x64a49603, 0x1d13597d )
  TEST_RRR_DEST_BYPASS( 48, 0, pv.cplxmul.h.i.div2, 0x2ea3c513, 0x8561fef1, 0xed7e9ecb, 0xf194c513 )
  TEST_RRR_DEST_BYPASS( 49, 1, pv.cplxmul.h.i.div2, 0x1fe0beed, 0x50620a6e, 0x417f5d06, 0x53eabeed )
  TEST_RRR_DEST_BYPASS( 50, 2, pv.cplxmul.h.i.div2, 0x045aa05f, 0xcde221a2, 0x1f54feca, 0x2a7da05f )
  TEST_RRR_SRC3_BYPASS( 51, 0, pv.cplxmul.h.i.div2, 0x2ed5ed1b, 0x85cef0c7, 0xff979dee, 0x7477ed1b )
  TEST_RRR_SRC3_BYPASS( 52, 1, pv.cplxmul.h.i.div2, 0x05cf9cc3, 0x26f16e45, 0x1569e993, 0x135d9cc3 )
  TEST_RRR_SRC3_BYPASS( 53, 2, pv.cplxmul.h.i.div2, 0xf0b745cc, 0x61b7fde2, 0x8745d559, 0x390c45cc )
  TEST_RRR_SRC3_BYPASS( 54, 0, pv.cplxmul.h.i.div2, 0x18d09f70, 0xcccbc707, 0xda6fadbc, 0xeb4a9f70 )
  TEST_RRR_SRC3_BYPASS( 55, 1, pv.cplxmul.h.i.div2, 0xe04680f3, 0xd083e7ce, 0x64267801, 0x2e8a80f3 )
  TEST_RRR_SRC3_BYPASS( 56, 2, pv.cplxmul.h.i.div2, 0xfe7c8ea7, 0xac2218cd, 0x250d0f94, 0xf64a8ea7 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 27, 0, 0, pv.cplxmul.h.i.div2, 0xff4ecda9, 0xb55b47b0, 0x5a3b5907, 0x5b74cda9 )
  TEST_RRR_SRC12_BYPASS( 28, 0, 1, pv.cplxmul.h.i.div2, 0x1a690260, 0xe223d046, 0x90a2cf95, 0x1f6f0260 )
  TEST_RRR_SRC12_BYPASS( 29, 0, 2, pv.cplxmul.h.i.div2, 0xd6d2754d, 0x2ef37c6b, 0xb2b4ec51, 0xb6eb754d )
  TEST_RRR_SRC12_BYPASS( 30, 1, 0, pv.cplxmul.h.i.div2, 0xc67cd100, 0x866746db, 0xd3555f0e, 0x9bcfd100 )
  TEST_RRR_SRC12_BYPASS( 31, 1, 1, pv.cplxmul.h.i.div2, 0xe28c2ea1, 0xc624d4f5, 0x65ac36ad, 0x99652ea1 )
  TEST_RRR_SRC12_BYPASS( 32, 1, 2, pv.cplxmul.h.i.div2, 0x0168135a, 0x0316f856, 0xed8846d3, 0x30cd135a )
  TEST_RRR_SRC12_BYPASS( 33, 2, 0, pv.cplxmul.h.i.div2, 0xd0ca8e3b, 0xa453762c, 0xb5d32436, 0x449f8e3b )
  TEST_RRR_SRC12_BYPASS( 34, 2, 1, pv.cplxmul.h.i.div2, 0x17d04f04, 0x03ab5055, 0x51308be9, 0x5e2b4f04 )
  TEST_RRR_SRC12_BYPASS( 35, 2, 2, pv.cplxmul.h.i.div2, 0x20b58287, 0x213aa199, 0xa51df9c8, 0x81578287 )
  TEST_RRR_SRC12_BYPASS( 36, 0, 0, pv.cplxmul.h.i.div2, 0xf901160d, 0xe61db7e4, 0x148e0be8, 0xb47a160d )
  TEST_RRR_SRC12_BYPASS( 37, 0, 1, pv.cplxmul.h.i.div2, 0x2ae4cd01, 0xad19d93c, 0xab47a329, 0xd156cd01 )
  TEST_RRR_SRC12_BYPASS( 38, 0, 2, pv.cplxmul.h.i.div2, 0x005f46f3, 0xdb08ad8e, 0x2c169b19, 0x9a8a46f3 )
  TEST_RRR_SRC12_BYPASS( 39, 1, 0, pv.cplxmul.h.i.div2, 0x2ef0bca1, 0x37e0748b, 0x33876b94, 0xba5abca1 )
  TEST_RRR_SRC12_BYPASS( 40, 1, 1, pv.cplxmul.h.i.div2, 0xc222eddc, 0x88e7239a, 0xe0f87bb5, 0x43bbeddc )
  TEST_RRR_SRC12_BYPASS( 41, 1, 2, pv.cplxmul.h.i.div2, 0xe634abfc, 0x1fa84f60, 0x8d5d4eda, 0x4106abfc )
  TEST_RRR_SRC12_BYPASS( 42, 2, 0, pv.cplxmul.h.i.div2, 0xf3969e2d, 0x38000d42, 0x4bfcb547, 0x1cc19e2d )
  TEST_RRR_SRC12_BYPASS( 43, 2, 1, pv.cplxmul.h.i.div2, 0xff890b53, 0xe59910ff, 0xaf79d0a5, 0x02040b53 )
  TEST_RRR_SRC12_BYPASS( 44, 2, 2, pv.cplxmul.h.i.div2, 0x0aba5884, 0x65ab1864, 0x33890ea6, 0xd1685884 )
  
  

  TEST_RRR_ZEROSRC1( 57, pv.cplxmul.h.i.div2, 0x00004a80, 0xb7cbed4f, 0xe68f4a80 )
  TEST_RRR_ZEROSRC1( 58, pv.cplxmul.h.i.div2, 0x0000fe5b, 0xa262fa3b, 0x9c05fe5b )
  
  TEST_RRR_ZEROSRC2( 59, pv.cplxmul.h.i.div2, 0x00004823, 0x2066d70e, 0x54544823 )
  TEST_RRR_ZEROSRC2( 60, pv.cplxmul.h.i.div2, 0x0000b359, 0xb60fbc4d, 0x2768b359 )
  
  TEST_RRR_ZEROSRC3( 61, pv.cplxmul.h.i.div2, 0x1c6e0000, 0xa86fe6f3, 0xee30b1fa )
  TEST_RRR_ZEROSRC3( 62, pv.cplxmul.h.i.div2, 0xe8820000, 0xbc77e8e1, 0x4d013eae )
  
  TEST_RRR_ZEROSRC12( 63, pv.cplxmul.h.i.div2, 0x000048a7, 0x075a48a7 )
  TEST_RRR_ZEROSRC12( 64, pv.cplxmul.h.i.div2, 0x0000ef70, 0x1b39ef70 )
  
  TEST_RRR_ZEROSRC123( 65, pv.cplxmul.h.i.div2, 0x00000000 )
  TEST_RRR_ZEROSRC123( 66, pv.cplxmul.h.i.div2, 0x00000000 )
  
  TEST_RRR_ZERODEST( 67, pv.cplxmul.h.i.div2, 0x3bf77d5e, 0xea1b201a )
  TEST_RRR_ZERODEST( 68, pv.cplxmul.h.i.div2, 0xcab3160a, 0x7bf7709c )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
