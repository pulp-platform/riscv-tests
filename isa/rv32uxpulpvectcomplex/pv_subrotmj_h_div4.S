# See LICENSE for license details.

#*****************************************************************************
# pv.subrotmj.h.div4
#-----------------------------------------------------------------------------
#
# Test pv.subrotmj.h.div4 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.subrotmj.h.div4, 0xeeef1111, 0x55667788, 0x11223344 )
  TEST_RR_OP( 3, pv.subrotmj.h.div4, 0x1111eeef, 0x11223344, 0x55667788 )
  TEST_RR_OP( 4, pv.subrotmj.h.div4, 0xffffffff, 0x7fff8000, 0x80007fff )
  TEST_RR_OP( 5, pv.subrotmj.h.div4, 0xf14be3f5, 0x616f48ba, 0xd19a0de8 )
  TEST_RR_OP( 6, pv.subrotmj.h.div4, 0xf7650492, 0xa63a84c1, 0x93ef6258 )
  TEST_RR_OP( 7, pv.subrotmj.h.div4, 0x109511bb, 0xe5f4025a, 0x9f0644b1 )
  TEST_RR_OP( 8, pv.subrotmj.h.div4, 0xe00e1af5, 0x35290b2f, 0xc9558b6a )
  TEST_RR_OP( 9, pv.subrotmj.h.div4, 0x0ee3f230, 0x820432cf, 0xb9446e5d )
  TEST_RR_OP( 10, pv.subrotmj.h.div4, 0x091ef99d, 0x8fd617e1, 0xa9613c5c )
  TEST_RR_OP( 11, pv.subrotmj.h.div4, 0xe7160991, 0x5e9f3d33, 0x385ad98d )
  TEST_RR_OP( 12, pv.subrotmj.h.div4, 0x1b9d0e74, 0x04ee99d0, 0xcb1b0844 )
  TEST_RR_OP( 13, pv.subrotmj.h.div4, 0xee2ee169, 0x84a42a99, 0xfefde351 )
  TEST_RR_OP( 14, pv.subrotmj.h.div4, 0xe7c302f4, 0x5fa9e6fe, 0x53d6860d )
  TEST_RR_OP( 15, pv.subrotmj.h.div4, 0xe3a113c1, 0xb3527011, 0x644cfe95 )
  TEST_RR_OP( 16, pv.subrotmj.h.div4, 0x0382114c, 0xfb0b1387, 0xb5d82190 )
  TEST_RR_OP( 17, pv.subrotmj.h.div4, 0xfeb4089a, 0x928a4932, 0x70224402 )
  TEST_RR_OP( 18, pv.subrotmj.h.div4, 0x13ef0eee, 0xeb4b33d6, 0xaf938394 )
  TEST_RR_OP( 19, pv.subrotmj.h.div4, 0xe3b0e7e1, 0x220c58a1, 0x8287e763 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.subrotmj.h.div4, 0x00271195, 0xe3c1cf08, 0x9d6dcfa7 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.subrotmj.h.div4, 0x1363ea65, 0x978aed18, 0xedf33aa4 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.subrotmj.h.div4, 0x0088186b, 0x9dfe3aac, 0x3c4f3ccd )
  TEST_RR_SRC2_EQ_DEST( 23, pv.subrotmj.h.div4, 0x01e5f6fe, 0xeb479719, 0x0f4e9eb0 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.subrotmj.h.div4, 0x00000000, 0x7be51053 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.subrotmj.h.div4, 0x00000000, 0x155a198f )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.subrotmj.h.div4, 0x00000000, 0xfe95e2b5, 0xfe95e2b5 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.subrotmj.h.div4, 0x00000000, 0x67c2d573, 0x67c2d573 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.subrotmj.h.div4, 0x00000000, 0x4f6e5dae, 0x4f6e5dae )
  TEST_RR_DEST_BYPASS( 47, 0, pv.subrotmj.h.div4, 0x00000000, 0xcc4f57b6, 0xcc4f57b6 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.subrotmj.h.div4, 0x00000000, 0x8df933a2, 0x8df933a2 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.subrotmj.h.div4, 0x00000000, 0xfa887fd1, 0xfa887fd1 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.subrotmj.h.div4, 0x0172ef5a, 0x86d5f926, 0xc96dfeee )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.subrotmj.h.div4, 0xf092f037, 0x27de853b, 0x67014784 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.subrotmj.h.div4, 0xe9e11d6f, 0x2a5bdd84, 0xb49f850a )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.subrotmj.h.div4, 0xfd04f3dc, 0x6e3e2675, 0x9ece1a86 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.subrotmj.h.div4, 0x0c010bc7, 0x4612d0f4, 0x16f300fa )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.subrotmj.h.div4, 0x1dcef592, 0x09cf1468, 0x33878ba1 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.subrotmj.h.div4, 0x01e401bd, 0x9ca78b24, 0x95b292b6 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.subrotmj.h.div4, 0x0d0bfa9c, 0xbf83f737, 0xd5102b64 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.subrotmj.h.div4, 0x1065f650, 0x31c7b2bb, 0x5886f451 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.subrotmj.h.div4, 0xe2910c65, 0x6c515aa4, 0x3abbe4e9 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.subrotmj.h.div4, 0xe453ea16, 0x666cf7cf, 0xbe13891e )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.subrotmj.h.div4, 0x135d0c4b, 0x16f4753c, 0xe5c8c2b1 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.subrotmj.h.div4, 0x1507edca, 0x2fc38abf, 0x789adedd )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.subrotmj.h.div4, 0xe8dc1238, 0x45d5c46e, 0xfcf267e0 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.subrotmj.h.div4, 0x1cea1778, 0x95033e65, 0x3720b20d )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.subrotmj.h.div4, 0xf80c1a5d, 0xe6ff57fe, 0x7d89382f )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.subrotmj.h.div4, 0xf21bfeda, 0xa7797383, 0xac113bf1 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.subrotmj.h.div4, 0xe4fbfcc4, 0xb2c68330, 0xbfb4171d )
  
  

  TEST_RR_ZEROSRC1( 50, pv.subrotmj.h.div4, 0xe049e732, 0x63388124 )
  TEST_RR_ZEROSRC1( 51, pv.subrotmj.h.div4, 0xe48ee0d5, 0x7ca99239 )
  
  TEST_RR_ZEROSRC2( 52, pv.subrotmj.h.div4, 0x14d017ce, 0x5f3bacbf )
  TEST_RR_ZEROSRC2( 53, pv.subrotmj.h.div4, 0x04e4e186, 0x861bec6e )
  
  TEST_RR_ZEROSRC12( 54, pv.subrotmj.h.div4, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.subrotmj.h.div4, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.subrotmj.h.div4, 0xec37ef9a, 0xc24114df )
  TEST_RR_ZERODEST( 57, pv.subrotmj.h.div4, 0xa692aa9e, 0x5d2f558d )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
