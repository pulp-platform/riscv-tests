# See LICENSE for license details.

#*****************************************************************************
# pv.sll.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.sll.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sll.sc.b, 0x80808080, 0x81818181, 0xaabbcdff )
  TEST_RR_OP( 3, pv.sll.sc.b, 0x81818181, 0x81818181, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.sll.sc.b, 0x02020202, 0x81818181, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.sll.sc.b, 0x80800000, 0x2dc5f44a, 0x420b558f )
  TEST_RR_OP( 6, pv.sll.sc.b, 0x665bf08b, 0x665bf08b, 0xbdc6dea0 )
  TEST_RR_OP( 7, pv.sll.sc.b, 0xf8784000, 0x3f6fe860, 0x125049e3 )
  TEST_RR_OP( 8, pv.sll.sc.b, 0x9028e0b8, 0xf2253c17, 0x0103363b )
  TEST_RR_OP( 9, pv.sll.sc.b, 0x00800080, 0x7c9b28f3, 0x4fa1954f )
  TEST_RR_OP( 10, pv.sll.sc.b, 0x70d03050, 0x378db305, 0x318f5b74 )
  TEST_RR_OP( 11, pv.sll.sc.b, 0x80302090, 0xf843d2d9, 0xd49b3e24 )
  TEST_RR_OP( 12, pv.sll.sc.b, 0xee7f466f, 0xee7f466f, 0x504febd0 )
  TEST_RR_OP( 13, pv.sll.sc.b, 0xb20ed6da, 0xd9876b6d, 0xd95a5f11 )
  TEST_RR_OP( 14, pv.sll.sc.b, 0xece4a82c, 0xbbb92a0b, 0x34a298aa )
  TEST_RR_OP( 15, pv.sll.sc.b, 0x44f692ea, 0x227bc975, 0x8be31a41 )
  TEST_RR_OP( 16, pv.sll.sc.b, 0x2b92c3f0, 0x2b92c3f0, 0x6d5f8e38 )
  TEST_RR_OP( 17, pv.sll.sc.b, 0x1572e8e1, 0x1572e8e1, 0xf0fa2878 )
  TEST_RR_OP( 18, pv.sll.sc.b, 0xb074b058, 0x2cdd6c16, 0x7955443a )
  TEST_RR_OP( 19, pv.sll.sc.b, 0x00000080, 0x0af2cc69, 0x425d50af )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sll.sc.b, 0x6098e86c, 0xd8a67adb, 0xf4c6674a )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sll.sc.b, 0x68b0b0d0, 0x8d76f69a, 0xc3e22dbb )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sll.sc.b, 0x28b0e8f0, 0x25d69dde, 0x9d661233 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sll.sc.b, 0x00000000, 0xa4e4b8d8, 0x560ec04e )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sll.sc.b, 0x80400080, 0xb261f83e )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sll.sc.b, 0xe8080818, 0xbd414183 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sll.sc.b, 0xbcf42c08, 0x6ffd4b42, 0x6ffd4b42 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sll.sc.b, 0x7800e898, 0xcf207df3, 0xcf207df3 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sll.sc.b, 0x00004080, 0xecc8c90e, 0xecc8c90e )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sll.sc.b, 0xd58f22e8, 0xd58f22e8, 0xd58f22e8 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sll.sc.b, 0x7024d448, 0xdc89b512, 0xdc89b512 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sll.sc.b, 0x808060a0, 0x4cfcf3fd, 0x4cfcf3fd )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sll.sc.b, 0xe0ca28f6, 0xf0e5147b, 0x242a4aa1 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sll.sc.b, 0xc0e00060, 0x063f0063, 0x822357cd )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sll.sc.b, 0x80006060, 0x7478abf3, 0x58a4a0b5 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sll.sc.b, 0x00c00080, 0xb87ef04c, 0x2c153b35 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sll.sc.b, 0xac1cd054, 0x6bc7b415, 0x4c76290a )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sll.sc.b, 0xf0a020e0, 0x1fba720e, 0xb198e094 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sll.sc.b, 0x40c06080, 0x82ae93cc, 0x312a7b2d )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sll.sc.b, 0x8a31ddb0, 0x8a31ddb0, 0x43a00590 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sll.sc.b, 0x17b23c07, 0x17b23c07, 0xeb663f80 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sll.sc.b, 0xdace8440, 0x6de7c220, 0x2be2df99 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sll.sc.b, 0x00808080, 0x9e0b41b7, 0x76d55887 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sll.sc.b, 0x0080c080, 0x245e134a, 0x58a65a06 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sll.sc.b, 0xbccc1802, 0xbccc1802, 0x663d5b60 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sll.sc.b, 0xb070a0e0, 0x9b972a4e, 0x583dda5c )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sll.sc.b, 0x00000000, 0xa0468c0c, 0x3d14990f )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sll.sc.b, 0x20e0a060, 0x71cfb58b, 0xad7fd7cd )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sll.sc.b, 0x31a5f8da, 0x31a5f8da, 0x46f82a20 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sll.sc.b, 0x40a000a0, 0xba75808d, 0x43c7597d )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sll.sc.b, 0x00000000, 0x01ef9549 )
  TEST_RR_ZEROSRC1( 51, pv.sll.sc.b, 0x00000000, 0xd8afdb4c )
  
  TEST_RR_ZEROSRC2( 52, pv.sll.sc.b, 0xe5d89ed9, 0xe5d89ed9 )
  TEST_RR_ZEROSRC2( 53, pv.sll.sc.b, 0x4773f374, 0x4773f374 )
  
  TEST_RR_ZEROSRC12( 54, pv.sll.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sll.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sll.sc.b, 0xfc77e72b, 0xaf6ad73e )
  TEST_RR_ZERODEST( 57, pv.sll.sc.b, 0x2cb0fb90, 0x35b26861 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
