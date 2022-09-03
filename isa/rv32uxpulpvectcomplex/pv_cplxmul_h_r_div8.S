# See LICENSE for license details.

#*****************************************************************************
# pv.cplxmul.h.r.div8
#-----------------------------------------------------------------------------
#
# Test pv.cplxmul.h.r.div8 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.cplxmul.h.r.div8, 0x1234048e, 0x55667788, 0x11223344, 0x12345678 )
  TEST_RRR_OP( 3, pv.cplxmul.h.r.div8, 0x1234048e, 0x11223344, 0x55667788, 0x12345678 )
  TEST_RRR_OP( 4, pv.cplxmul.h.r.div8, 0x12340000, 0x7fff8000, 0x80007fff, 0x12345678 )
  TEST_RRR_OP( 5, pv.cplxmul.h.r.div8, 0x841506ce, 0xb642b928, 0x3f6cdfa6, 0x8415937b )
  TEST_RRR_OP( 6, pv.cplxmul.h.r.div8, 0x8d400194, 0xd20b5888, 0x88225081, 0x8d4002cb )
  TEST_RRR_OP( 7, pv.cplxmul.h.r.div8, 0xa3b6fb77, 0x0c764e69, 0x8418b119, 0xa3b6ac13 )
  TEST_RRR_OP( 8, pv.cplxmul.h.r.div8, 0x29f20449, 0xe2e82c54, 0x316542a1, 0x29f2dfce )
  TEST_RRR_OP( 9, pv.cplxmul.h.r.div8, 0x8acb0208, 0x1383662b, 0x9004fefc, 0x8acb53da )
  TEST_RRR_OP( 10, pv.cplxmul.h.r.div8, 0x1a240573, 0x409591c9, 0x42d7a634, 0x1a2462ca )
  TEST_RRR_OP( 11, pv.cplxmul.h.r.div8, 0x194ef490, 0x6d98cbb1, 0x7d31d996, 0x194e25a7 )
  TEST_RRR_OP( 12, pv.cplxmul.h.r.div8, 0xad7cfb27, 0xd7c6d7bd, 0xff387a70, 0xad7c92c7 )
  TEST_RRR_OP( 13, pv.cplxmul.h.r.div8, 0xeca7fb32, 0x45e2060d, 0x4a7e2fdd, 0xeca7b9fe )
  TEST_RRR_OP( 14, pv.cplxmul.h.r.div8, 0x8051f397, 0x40879b09, 0x41205439, 0x8051e735 )
  TEST_RRR_OP( 15, pv.cplxmul.h.r.div8, 0x0b7f07bd, 0x287f5af5, 0x04c0593e, 0x0b7fdd01 )
  TEST_RRR_OP( 16, pv.cplxmul.h.r.div8, 0x827007fd, 0xc1b4ea5d, 0x58e385db, 0x827012e7 )
  TEST_RRR_OP( 17, pv.cplxmul.h.r.div8, 0xcbe4060b, 0x805a058f, 0x2b1c7be7, 0xcbe4dd63 )
  TEST_RRR_OP( 18, pv.cplxmul.h.r.div8, 0x332d0fbd, 0x67658f49, 0x8cd5daa3, 0x332d6059 )
  TEST_RRR_OP( 19, pv.cplxmul.h.r.div8, 0x86cb017f, 0x20c8459c, 0xed8e0d53, 0x86cb7017 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 20, pv.cplxmul.h.r.div8, 0xb1990a9e, 0xb1999040, 0x42aecd76 )
  TEST_RRR_SRC1_EQ_DEST( 21, pv.cplxmul.h.r.div8, 0x307901f1, 0x307940d8, 0x7ba27b22 )
  
  TEST_RRR_SRC2_EQ_DEST( 22, pv.cplxmul.h.r.div8, 0x1acb04fd, 0x1956ab3c, 0x1acbbbb5 )
  TEST_RRR_SRC2_EQ_DEST( 23, pv.cplxmul.h.r.div8, 0x8bc1f5f9, 0x87a9d1ec, 0x8bc1af37 )
  
  TEST_RRR_SRC12_EQ_DEST( 24, pv.cplxmul.h.r.div8, 0x8acafaf1, 0x8aca5c87 )
  TEST_RRR_SRC12_EQ_DEST( 25, pv.cplxmul.h.r.div8, 0x0a6d02d0, 0x0a6dc94d )
  
  TEST_RRR_DEST_BYPASS( 44, 0, pv.cplxmul.h.r.div8, 0x7113f9ff, 0xa46b9975, 0x086b4370, 0x7113e3a8 )
  TEST_RRR_DEST_BYPASS( 45, 1, pv.cplxmul.h.r.div8, 0x8b47fa34, 0xd9288d8b, 0xaf35186d, 0x8b475c28 )
  TEST_RRR_DEST_BYPASS( 46, 2, pv.cplxmul.h.r.div8, 0x06e2fe0f, 0x284af50d, 0x2e670a94, 0x06e23c67 )
  TEST_RRR_DEST_BYPASS( 47, 0, pv.cplxmul.h.r.div8, 0xed18fd6c, 0x0eecd9e4, 0xc44b5ca1, 0xed18949b )
  TEST_RRR_DEST_BYPASS( 48, 1, pv.cplxmul.h.r.div8, 0xc8d30ce2, 0x9faf3e43, 0x664135b7, 0xc8d3f404 )
  TEST_RRR_DEST_BYPASS( 49, 2, pv.cplxmul.h.r.div8, 0xa179082f, 0x6920ec5b, 0xa85e2a4c, 0xa179200b )
  TEST_RRR_SRC3_BYPASS( 50, 0, pv.cplxmul.h.r.div8, 0x3ad202d5, 0xe653b0bc, 0x262ae7c4, 0x3ad272f0 )
  TEST_RRR_SRC3_BYPASS( 51, 1, pv.cplxmul.h.r.div8, 0xac81fc56, 0x737df7fd, 0x2535bbce, 0xac814837 )
  TEST_RRR_SRC3_BYPASS( 52, 2, pv.cplxmul.h.r.div8, 0xdc76fcd1, 0x2c560e12, 0x36a8c4b0, 0xdc765a00 )
  TEST_RRR_SRC3_BYPASS( 53, 0, pv.cplxmul.h.r.div8, 0xa4d7fd92, 0x5f3eb8e1, 0x4f15b90f, 0xa4d7cae6 )
  TEST_RRR_SRC3_BYPASS( 54, 1, pv.cplxmul.h.r.div8, 0xf018f9d7, 0x53bc34a1, 0x4e280490, 0xf018f5ce )
  TEST_RRR_SRC3_BYPASS( 55, 2, pv.cplxmul.h.r.div8, 0xdd760649, 0x1355d3ab, 0xb255909a, 0xdd7678ce )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 26, 0, 0, pv.cplxmul.h.r.div8, 0x5d880953, 0xff15993f, 0xd913a2b8, 0x5d889cfd )
  TEST_RRR_SRC12_BYPASS( 27, 0, 1, pv.cplxmul.h.r.div8, 0xcf9d0dcc, 0xc55dbb16, 0x7bde9c5c, 0xcf9d3814 )
  TEST_RRR_SRC12_BYPASS( 28, 0, 2, pv.cplxmul.h.r.div8, 0x9320f67b, 0x58666fae, 0xfbf7a588, 0x9320e4e4 )
  TEST_RRR_SRC12_BYPASS( 29, 1, 0, pv.cplxmul.h.r.div8, 0x6569fe51, 0xf9464237, 0x9242f127, 0x6569d9bc )
  TEST_RRR_SRC12_BYPASS( 30, 1, 1, pv.cplxmul.h.r.div8, 0x514e0646, 0x97b7846d, 0x40a7028f, 0x514e5cbf )
  TEST_RRR_SRC12_BYPASS( 31, 1, 2, pv.cplxmul.h.r.div8, 0x1f1c0843, 0x8833ed89, 0x3d77c46e, 0x1f1c2a37 )
  TEST_RRR_SRC12_BYPASS( 32, 2, 0, pv.cplxmul.h.r.div8, 0xa66704fe, 0xed4827e2, 0x212570b2, 0xa667a9b1 )
  TEST_RRR_SRC12_BYPASS( 33, 2, 1, pv.cplxmul.h.r.div8, 0xde23fc08, 0x41e99121, 0x231f0fc2, 0xde231800 )
  TEST_RRR_SRC12_BYPASS( 34, 2, 2, pv.cplxmul.h.r.div8, 0xe80cff16, 0xfb9995f3, 0xbc0005fa, 0xe80c4e68 )
  TEST_RRR_SRC12_BYPASS( 35, 0, 0, pv.cplxmul.h.r.div8, 0x35370165, 0xff2de3ee, 0x2bb6ce47, 0x353797b7 )
  TEST_RRR_SRC12_BYPASS( 36, 0, 1, pv.cplxmul.h.r.div8, 0xd45ffc4e, 0x16ec5cc7, 0x8107b7de, 0xd45ff2b9 )
  TEST_RRR_SRC12_BYPASS( 37, 0, 2, pv.cplxmul.h.r.div8, 0xea2bf337, 0x97e4b3e9, 0xb31c42d2, 0xea2b2e34 )
  TEST_RRR_SRC12_BYPASS( 38, 1, 0, pv.cplxmul.h.r.div8, 0x2b61033d, 0x1499994f, 0x570ace39, 0x2b619085 )
  TEST_RRR_SRC12_BYPASS( 39, 1, 1, pv.cplxmul.h.r.div8, 0x7d050141, 0xbfb8170d, 0x16baf86b, 0x7d051676 )
  TEST_RRR_SRC12_BYPASS( 40, 1, 2, pv.cplxmul.h.r.div8, 0xb58cfc1e, 0x811b25b5, 0xc4db5d98, 0xb58cd74d )
  TEST_RRR_SRC12_BYPASS( 41, 2, 0, pv.cplxmul.h.r.div8, 0x704dfe34, 0x237add14, 0xebc14937, 0x704d2ac0 )
  TEST_RRR_SRC12_BYPASS( 42, 2, 1, pv.cplxmul.h.r.div8, 0x33fbf995, 0xce8bab92, 0xa99b1b33, 0x33fb4fd6 )
  TEST_RRR_SRC12_BYPASS( 43, 2, 2, pv.cplxmul.h.r.div8, 0x49350413, 0x6e9a2ee5, 0xc17fc5a1, 0x493578d6 )
  
  

  TEST_RRR_ZEROSRC1( 56, pv.cplxmul.h.r.div8, 0x6d2e0000, 0x48443e29, 0x6d2e627a )
  TEST_RRR_ZEROSRC1( 57, pv.cplxmul.h.r.div8, 0x7e980000, 0x0d05fe34, 0x7e981f81 )
  
  TEST_RRR_ZEROSRC2( 58, pv.cplxmul.h.r.div8, 0x8b9f0000, 0x040b5d54, 0x8b9f2c4f )
  TEST_RRR_ZEROSRC2( 59, pv.cplxmul.h.r.div8, 0x3fbf0000, 0xd92e0500, 0x3fbf88d2 )
  
  TEST_RRR_ZEROSRC3( 60, pv.cplxmul.h.r.div8, 0x0000f96c, 0x0e75b507, 0x92526efd )
  TEST_RRR_ZEROSRC3( 61, pv.cplxmul.h.r.div8, 0x00000823, 0xc5ad4239, 0x608728db )
  
  TEST_RRR_ZEROSRC12( 62, pv.cplxmul.h.r.div8, 0x312e0000, 0x312e5dea )
  TEST_RRR_ZEROSRC12( 63, pv.cplxmul.h.r.div8, 0xe9560000, 0xe9567849 )
  
  TEST_RRR_ZEROSRC123( 64, pv.cplxmul.h.r.div8, 0x00000000 )
  TEST_RRR_ZEROSRC123( 65, pv.cplxmul.h.r.div8, 0x00000000 )
  
  TEST_RRR_ZERODEST( 66, pv.cplxmul.h.r.div8, 0x24d7cb59, 0xb30768a4 )
  TEST_RRR_ZERODEST( 67, pv.cplxmul.h.r.div8, 0x9320f780, 0x65323108 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
