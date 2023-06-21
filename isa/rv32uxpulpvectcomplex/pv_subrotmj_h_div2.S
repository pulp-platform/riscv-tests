# See LICENSE for license details.

#*****************************************************************************
# pv.subrotmj.h.div2
#-----------------------------------------------------------------------------
#
# Test pv.subrotmj.h.div2 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.subrotmj.h.div2, 0xddde2222, 0x55667788, 0x11223344 )
  TEST_RR_OP( 3, pv.subrotmj.h.div2, 0x2222ddde, 0x11223344, 0x55667788 )
  TEST_RR_OP( 4, pv.subrotmj.h.div2, 0x00000000, 0x80008000, 0x80008000 )
  TEST_RR_OP( 5, pv.subrotmj.h.div2, 0xffffffff, 0x7fff8000, 0x80007fff )
  TEST_RR_OP( 6, pv.subrotmj.h.div2, 0x1bd3d58e, 0x1fe66e14, 0x74c9a5bb )
  TEST_RR_OP( 7, pv.subrotmj.h.div2, 0x37a1290c, 0x20c7db8e, 0xceaf4ad0 )
  TEST_RR_OP( 8, pv.subrotmj.h.div2, 0xfe7bcd18, 0x1f9b44c0, 0x856a41b7 )
  TEST_RR_OP( 9, pv.subrotmj.h.div2, 0x13ea280b, 0x402a21a8, 0xf014497c )
  TEST_RR_OP( 10, pv.subrotmj.h.div2, 0x3b8d1c4c, 0xbc3642ce, 0x839db9e8 )
  TEST_RR_OP( 11, pv.subrotmj.h.div2, 0xdefb07c9, 0xbf69b3d1, 0xafd771c8 )
  TEST_RR_OP( 12, pv.subrotmj.h.div2, 0xdf172d12, 0x64bb0f5e, 0x0a96cd8d )
  TEST_RR_OP( 13, pv.subrotmj.h.div2, 0xece63054, 0xf2910bed, 0x91e8e5ba )
  TEST_RR_OP( 14, pv.subrotmj.h.div2, 0xfbdc300f, 0x65c92023, 0x05ab17dc )
  TEST_RR_OP( 15, pv.subrotmj.h.div2, 0x09b73622, 0xf75a7622, 0x8b168991 )
  TEST_RR_OP( 16, pv.subrotmj.h.div2, 0xdb100fc3, 0x83ccb762, 0x64466d83 )
  TEST_RR_OP( 17, pv.subrotmj.h.div2, 0xec732c37, 0x4d85b065, 0xf517894c )
  TEST_RR_OP( 18, pv.subrotmj.h.div2, 0xc9bdd587, 0x47efa9bd, 0x9ce03d37 )
  TEST_RR_OP( 19, pv.subrotmj.h.div2, 0xc762fb9f, 0xc25fcbef, 0xcb215ab4 )
  TEST_RR_OP( 20, pv.subrotmj.h.div2, 0xcd6ee534, 0xd63c6919, 0x0bd403f6 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 21, pv.subrotmj.h.div2, 0x0c84ed68, 0x987118a0, 0xbda131a8 )
  TEST_RR_SRC1_EQ_DEST( 22, pv.subrotmj.h.div2, 0x10ed0b1b, 0xdfa79542, 0xc971b71c )
  
  TEST_RR_SRC2_EQ_DEST( 23, pv.subrotmj.h.div2, 0xf4bd0ccb, 0xf6b01aba, 0xdd1a0434 )
  TEST_RR_SRC2_EQ_DEST( 24, pv.subrotmj.h.div2, 0x2dff177e, 0x83fb9693, 0x54fef292 )
  
  TEST_RR_SRC12_EQ_DEST( 25, pv.subrotmj.h.div2, 0x00000000, 0x86f7ab83 )
  TEST_RR_SRC12_EQ_DEST( 26, pv.subrotmj.h.div2, 0x00000000, 0x432bc558 )
  
  TEST_RR_DEST_BYPASS( 45, 0, pv.subrotmj.h.div2, 0x00000000, 0xfe1c0d88, 0xfe1c0d88 )
  TEST_RR_DEST_BYPASS( 46, 1, pv.subrotmj.h.div2, 0x00000000, 0x64b7262c, 0x64b7262c )
  TEST_RR_DEST_BYPASS( 47, 2, pv.subrotmj.h.div2, 0x00000000, 0x178f61af, 0x178f61af )
  TEST_RR_DEST_BYPASS( 48, 0, pv.subrotmj.h.div2, 0x00000000, 0xa6f9234d, 0xa6f9234d )
  TEST_RR_DEST_BYPASS( 49, 1, pv.subrotmj.h.div2, 0x00000000, 0x90b49575, 0x90b49575 )
  TEST_RR_DEST_BYPASS( 50, 2, pv.subrotmj.h.div2, 0x00000000, 0xf425d36e, 0xf425d36e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 27, 0, 0, pv.subrotmj.h.div2, 0xc9ffd1f7, 0x2a3d5d2f, 0x864ff12d )
  TEST_RR_SRC12_BYPASS( 28, 0, 1, pv.subrotmj.h.div2, 0xfc90c441, 0x4718e540, 0xbe96de60 )
  TEST_RR_SRC12_BYPASS( 29, 0, 2, pv.subrotmj.h.div2, 0x3a41cdd0, 0xb27f50b6, 0x16dec539 )
  TEST_RR_SRC12_BYPASS( 30, 1, 0, pv.subrotmj.h.div2, 0x01e32ac5, 0x85bd88f6, 0x30338cbc )
  TEST_RR_SRC12_BYPASS( 31, 1, 1, pv.subrotmj.h.div2, 0x2f5007c9, 0xec974188, 0xdd05a029 )
  TEST_RR_SRC12_BYPASS( 32, 1, 2, pv.subrotmj.h.div2, 0x398ed65b, 0xc1bea26c, 0x15081589 )
  TEST_RR_SRC12_BYPASS( 33, 2, 0, pv.subrotmj.h.div2, 0xe1c62194, 0x9bbae5a3, 0x5892a930 )
  TEST_RR_SRC12_BYPASS( 34, 2, 1, pv.subrotmj.h.div2, 0x3f07d115, 0xed02beb3, 0x4ad83cc1 )
  TEST_RR_SRC12_BYPASS( 35, 2, 2, pv.subrotmj.h.div2, 0x2e50c242, 0x069d3b8f, 0x8218982f )
  TEST_RR_SRC12_BYPASS( 36, 0, 0, pv.subrotmj.h.div2, 0xef583d28, 0x44430541, 0xc9f2e3f2 )
  TEST_RR_SRC12_BYPASS( 37, 0, 1, pv.subrotmj.h.div2, 0x39b1098a, 0x15353ea0, 0x0221b203 )
  TEST_RR_SRC12_BYPASS( 38, 0, 2, pv.subrotmj.h.div2, 0xe0cfeb0f, 0xa2ac429b, 0xcc8d043a )
  TEST_RR_SRC12_BYPASS( 39, 1, 0, pv.subrotmj.h.div2, 0x30ce1ed8, 0x4123fe51, 0x03735fee )
  TEST_RR_SRC12_BYPASS( 40, 1, 1, pv.subrotmj.h.div2, 0x1fb2ebd7, 0x315c4cbb, 0x59ad8c1f )
  TEST_RR_SRC12_BYPASS( 41, 1, 2, pv.subrotmj.h.div2, 0xc169202f, 0x9efd8100, 0x5e9e03d3 )
  TEST_RR_SRC12_BYPASS( 42, 2, 0, pv.subrotmj.h.div2, 0xd822d556, 0x9414019d, 0xe968b1e2 )
  TEST_RR_SRC12_BYPASS( 43, 2, 1, pv.subrotmj.h.div2, 0x3e4114bc, 0xfbdfebc7, 0xd267684a )
  TEST_RR_SRC12_BYPASS( 44, 2, 2, pv.subrotmj.h.div2, 0x161e108f, 0x42991cf8, 0x217a4934 )
  
  

  TEST_RR_ZEROSRC1( 51, pv.subrotmj.h.div2, 0x23d33f4d, 0x816547a7 )
  TEST_RR_ZEROSRC1( 52, pv.subrotmj.h.div2, 0x05f02ba7, 0xa8b10be0 )
  
  TEST_RR_ZEROSRC2( 53, pv.subrotmj.h.div2, 0xc9671864, 0x30c96d31 )
  TEST_RR_ZEROSRC2( 54, pv.subrotmj.h.div2, 0xda1ae2b7, 0xc56e4bcb )
  
  TEST_RR_ZEROSRC12( 55, pv.subrotmj.h.div2, 0x00000000 )
  TEST_RR_ZEROSRC12( 56, pv.subrotmj.h.div2, 0x00000000 )
  
  TEST_RR_ZERODEST( 57, pv.subrotmj.h.div2, 0x7d4764f5, 0xbc17a780 )
  TEST_RR_ZERODEST( 58, pv.subrotmj.h.div2, 0x60614f52, 0xc2a8df48 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
