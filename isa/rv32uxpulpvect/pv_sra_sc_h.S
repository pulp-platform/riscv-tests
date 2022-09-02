# See LICENSE for license details.

#*****************************************************************************
# pv.sra.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.sra.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sra.sc.h, 0x00000000, 0x40000000, 0xaabbcdff )
  TEST_RR_OP( 3, pv.sra.sc.h, 0x80000000, 0x80000000, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.sra.sc.h, 0x20000000, 0x40000000, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.sra.sc.h, 0xff2e00a4, 0xe5d2148d, 0xb063f8e5 )
  TEST_RR_OP( 6, pv.sra.sc.h, 0xffff0000, 0xc4f74be9, 0x9cdc713f )
  TEST_RR_OP( 7, pv.sra.sc.h, 0xff310078, 0x98e03c39, 0xde69bb87 )
  TEST_RR_OP( 8, pv.sra.sc.h, 0xfffdffff, 0xa5d4f406, 0xdce530bd )
  TEST_RR_OP( 9, pv.sra.sc.h, 0x00150017, 0x572a5c6a, 0xe3c198da )
  TEST_RR_OP( 10, pv.sra.sc.h, 0x0004ffff, 0x4530f34f, 0xa74e85cc )
  TEST_RR_OP( 11, pv.sra.sc.h, 0x00070003, 0x7cc23122, 0x3ce3dbac )
  TEST_RR_OP( 12, pv.sra.sc.h, 0x02c4fd9c, 0x2c4ad9c4, 0xf8d04e34 )
  TEST_RR_OP( 13, pv.sra.sc.h, 0x000f0008, 0x7e69404f, 0x47f3ee6b )
  TEST_RR_OP( 14, pv.sra.sc.h, 0x20e3b194, 0x20e3b194, 0x3dd99800 )
  TEST_RR_OP( 15, pv.sra.sc.h, 0xb751d23f, 0xb751d23f, 0x66c86e60 )
  TEST_RR_OP( 16, pv.sra.sc.h, 0xfffe0001, 0xb1765404, 0xdaef69ce )
  TEST_RR_OP( 17, pv.sra.sc.h, 0xfb5e02a2, 0xb5e42a27, 0xe8a0a4a4 )
  TEST_RR_OP( 18, pv.sra.sc.h, 0xfffffffd, 0xfa63d468, 0xcff2f8ec )
  TEST_RR_OP( 19, pv.sra.sc.h, 0xfffa0004, 0xd16324a9, 0x4af72adb )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sra.sc.h, 0x00640028, 0x642e2856, 0x6dc57918 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sra.sc.h, 0x01440694, 0x144f6941, 0x68d722f4 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sra.sc.h, 0x0f8a19b4, 0x3e2966d0, 0xf9b3e992 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sra.sc.h, 0x21fa0568, 0x43f40ad0, 0xb905a481 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sra.sc.h, 0xfd4d00ee, 0xa9bd1dc5 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sra.sc.h, 0xfedb2c40, 0xfedb2c40 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sra.sc.h, 0x0004000d, 0x27466f8b, 0x27466f8b )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sra.sc.h, 0x03c15400, 0x03c15400, 0x03c15400 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sra.sc.h, 0xe7b81d90, 0x9ee27642, 0x9ee27642 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sra.sc.h, 0xfff7003f, 0xeef47fb9, 0xeef47fb9 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sra.sc.h, 0x1c8a10a0, 0x72284282, 0x72284282 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sra.sc.h, 0xfe85fe7c, 0xa14d9f06, 0xa14d9f06 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sra.sc.h, 0x980432a3, 0x980432a3, 0x20edbc70 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sra.sc.h, 0xfffb0003, 0xb1883d91, 0xfed837bc )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sra.sc.h, 0x0015ffe9, 0x570fa5ca, 0xea1033ca )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sra.sc.h, 0xffff0000, 0xc0814d09, 0x22c189df )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sra.sc.h, 0xfeb40116, 0xad3845ab, 0xc17cb426 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sra.sc.h, 0xfffb0005, 0xb7f45091, 0xbb01fd0c )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sra.sc.h, 0xfff6fff1, 0xd884c5f0, 0xab52d36a )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sra.sc.h, 0x0110ff58, 0x4418d63c, 0x41a3fe56 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sra.sc.h, 0xfef5014e, 0xbd46539e, 0x5c0c6646 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sra.sc.h, 0xfcb8ff21, 0x971be423, 0x44d9ff75 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sra.sc.h, 0xfffbffe7, 0xf628cf86, 0x0a98fb39 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sra.sc.h, 0x063c0d25, 0x31e36928, 0xafd23f33 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sra.sc.h, 0x0a420b87, 0x52165c39, 0xb2b3c833 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sra.sc.h, 0xe412e47e, 0x904891fb, 0x7d0337f2 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sra.sc.h, 0x0138019a, 0x270e3354, 0x8d03dbd5 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sra.sc.h, 0xffe7ffea, 0x9de6ab55, 0x51d4931a )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sra.sc.h, 0xf0d5d0ee, 0xe1aaa1dc, 0x8ae58381 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sra.sc.h, 0x0002ffff, 0x4e74e6e1, 0x6949776d )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sra.sc.h, 0x00000000, 0xfb464dd7 )
  TEST_RR_ZEROSRC1( 51, pv.sra.sc.h, 0x00000000, 0x71193b8b )
  
  TEST_RR_ZEROSRC2( 52, pv.sra.sc.h, 0x54c4e4a2, 0x54c4e4a2 )
  TEST_RR_ZEROSRC2( 53, pv.sra.sc.h, 0x81a3e8f6, 0x81a3e8f6 )
  
  TEST_RR_ZEROSRC12( 54, pv.sra.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sra.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sra.sc.h, 0x7e0cad0f, 0x3a0f4602 )
  TEST_RR_ZERODEST( 57, pv.sra.sc.h, 0xa3ed820d, 0x3e2a5302 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
