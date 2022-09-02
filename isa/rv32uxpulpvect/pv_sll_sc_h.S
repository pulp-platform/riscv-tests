# See LICENSE for license details.

#*****************************************************************************
# pv.sll.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.sll.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sll.sc.h, 0x80008000, 0x81818181, 0xaabbcdff )
  TEST_RR_OP( 3, pv.sll.sc.h, 0x81818181, 0x81818181, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.sll.sc.h, 0x03020302, 0x81818181, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.sll.sc.h, 0x00000000, 0xe9f6f59c, 0xbf4d469f )
  TEST_RR_OP( 6, pv.sll.sc.h, 0x0000c000, 0xaa54d67b, 0x8a32592e )
  TEST_RR_OP( 7, pv.sll.sc.h, 0x5900b600, 0x3cb23d6c, 0x75d1f667 )
  TEST_RR_OP( 8, pv.sll.sc.h, 0x08000200, 0x8204aa81, 0xaecb6699 )
  TEST_RR_OP( 9, pv.sll.sc.h, 0xe4002400, 0x49f24012, 0xb975f949 )
  TEST_RR_OP( 10, pv.sll.sc.h, 0xffd4a7d4, 0x7fea53ea, 0xb9e24241 )
  TEST_RR_OP( 11, pv.sll.sc.h, 0xc6a08460, 0x0635fc23, 0xbea9f4c5 )
  TEST_RR_OP( 12, pv.sll.sc.h, 0xe0001000, 0xc41c8c02, 0x0babf5db )
  TEST_RR_OP( 13, pv.sll.sc.h, 0x7800a800, 0x2f1e84aa, 0xb3699f8a )
  TEST_RR_OP( 14, pv.sll.sc.h, 0xae002100, 0x11ae2c21, 0x55d29688 )
  TEST_RR_OP( 15, pv.sll.sc.h, 0xbf4024c0, 0x76fd6093, 0x1d7597e6 )
  TEST_RR_OP( 16, pv.sll.sc.h, 0xe60ffe90, 0xe60ffe90, 0x66fc6680 )
  TEST_RR_OP( 17, pv.sll.sc.h, 0x80008000, 0x1d5d03dd, 0x153573cf )
  TEST_RR_OP( 18, pv.sll.sc.h, 0x80000000, 0x241ccd80, 0xde78f31d )
  TEST_RR_OP( 19, pv.sll.sc.h, 0x00000000, 0xee027340, 0x5e8ca5ef )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sll.sc.h, 0xa8000000, 0x4d751e80, 0x7b0677cb )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sll.sc.h, 0x0000a000, 0x86d0d9ba, 0x3ed7ca5c )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sll.sc.h, 0x20006000, 0x1f229d36, 0x4fcf80ac )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sll.sc.h, 0x97d2c86b, 0x97d2c86b, 0x325303f0 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sll.sc.h, 0x40008000, 0xf441f03e )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sll.sc.h, 0x59127e42, 0x2c89bf21 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sll.sc.h, 0x5fb0ae40, 0xf5fb3ae4, 0xf5fb3ae4 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sll.sc.h, 0x6e003b80, 0xcadcf477, 0xcadcf477 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sll.sc.h, 0xc400a800, 0xd5f137ea, 0xd5f137ea )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sll.sc.h, 0x2000a000, 0xca91a00d, 0xca91a00d )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sll.sc.h, 0xaaa0d240, 0x4aaacd24, 0x4aaacd24 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sll.sc.h, 0x29d08640, 0xa29d6864, 0xa29d6864 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sll.sc.h, 0x6c001800, 0x2cdbda06, 0x03364d5a )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sll.sc.h, 0xf1606880, 0xbf16e688, 0x07d1b944 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sll.sc.h, 0x87fa64d0, 0x43fdb268, 0x9230e601 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sll.sc.h, 0xb540de80, 0xced5d37a, 0x909bc5c6 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sll.sc.h, 0x80000000, 0xb6ef7578, 0xaf9aa89f )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sll.sc.h, 0x48001400, 0x7d523105, 0x9fa6ecea )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sll.sc.h, 0x80000000, 0x271f9d70, 0x0bede9af )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sll.sc.h, 0xf800aa00, 0x0efc2a55, 0xec0c3aa9 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sll.sc.h, 0xb0006400, 0x5b2c4b59, 0x1a1588aa )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sll.sc.h, 0x3400d800, 0xfacd3a76, 0x0403e00a )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sll.sc.h, 0xb3a0e6c0, 0xbd9d7736, 0x931d5335 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sll.sc.h, 0xa0008000, 0xd8e8d1e0, 0x4c32110a )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sll.sc.h, 0x01606f60, 0x001626f6, 0x6b767054 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sll.sc.h, 0x48803f00, 0x1091687e, 0xefba39f7 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sll.sc.h, 0x2c204d80, 0x0961826c, 0xba394bb5 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sll.sc.h, 0x53846cc8, 0x14e11b32, 0x799dea62 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sll.sc.h, 0x14007000, 0x30850fdc, 0xd4a83aaa )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sll.sc.h, 0x0800b800, 0xce41ca97, 0x05b024db )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sll.sc.h, 0x00000000, 0xd1f0f1b4 )
  TEST_RR_ZEROSRC1( 51, pv.sll.sc.h, 0x00000000, 0x4104a168 )
  
  TEST_RR_ZEROSRC2( 52, pv.sll.sc.h, 0xd59efacb, 0xd59efacb )
  TEST_RR_ZEROSRC2( 53, pv.sll.sc.h, 0xa0135e2d, 0xa0135e2d )
  
  TEST_RR_ZEROSRC12( 54, pv.sll.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sll.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sll.sc.h, 0x9b4b485b, 0x8643672b )
  TEST_RR_ZERODEST( 57, pv.sll.sc.h, 0x48377dd6, 0x6aa6f269 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
