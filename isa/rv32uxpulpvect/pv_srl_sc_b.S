# See LICENSE for license details.

#*****************************************************************************
# pv.srl.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.srl.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.srl.sc.b, 0x01010101, 0x81818181, 0xaabbcdff )
  TEST_RR_OP( 3, pv.srl.sc.b, 0x81818181, 0x81818181, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.srl.sc.b, 0x40404040, 0x81818181, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.srl.sc.b, 0x01020100, 0x51ad4026, 0x2738d126 )
  TEST_RR_OP( 6, pv.srl.sc.b, 0x00010100, 0x21eea950, 0xdb30f67f )
  TEST_RR_OP( 7, pv.srl.sc.b, 0x1411020a, 0xa08f1756, 0x4993661b )
  TEST_RR_OP( 8, pv.srl.sc.b, 0x191f0d1a, 0xcef968d7, 0xd8a5611b )
  TEST_RR_OP( 9, pv.srl.sc.b, 0x2d1c2034, 0xb67382d1, 0xd481aa32 )
  TEST_RR_OP( 10, pv.srl.sc.b, 0x32041a12, 0xcb136a4a, 0x8879e7aa )
  TEST_RR_OP( 11, pv.srl.sc.b, 0x00010101, 0x6d86e4e3, 0xd53f5aef )
  TEST_RR_OP( 12, pv.srl.sc.b, 0x150f0a11, 0xa87b538e, 0xca791103 )
  TEST_RR_OP( 13, pv.srl.sc.b, 0x342c0a08, 0xd0b12821, 0xd44d8702 )
  TEST_RR_OP( 14, pv.srl.sc.b, 0x00000100, 0x216bab4e, 0x89244f67 )
  TEST_RR_OP( 15, pv.srl.sc.b, 0x050d0c05, 0x55d9cd5e, 0x206ef77c )
  TEST_RR_OP( 16, pv.srl.sc.b, 0x07010401, 0xf52f8537, 0x2afa4125 )
  TEST_RR_OP( 17, pv.srl.sc.b, 0x0c040604, 0xc7446e4e, 0x2ba1754c )
  TEST_RR_OP( 18, pv.srl.sc.b, 0x1d1a591c, 0x3b35b339, 0x29e97039 )
  TEST_RR_OP( 19, pv.srl.sc.b, 0x0b0a2231, 0x2d2b89c5, 0x2036e9d2 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.srl.sc.b, 0x0d000b04, 0xd803bf4c, 0xa53c1044 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.srl.sc.b, 0x13260e0f, 0x4e9b3a3f, 0xfecf84d2 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.srl.sc.b, 0x360b2023, 0xda2d828f, 0x811b8cda )
  TEST_RR_SRC2_EQ_DEST( 23, pv.srl.sc.b, 0x05151201, 0x28a8940d, 0x515f00e3 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.srl.sc.b, 0x09100d10, 0x4e816a83 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.srl.sc.b, 0x00010100, 0x67cac727 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.srl.sc.b, 0x6a184114, 0xd4308329, 0xd4308329 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.srl.sc.b, 0x0bb445e0, 0x0bb445e0, 0x0bb445e0 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.srl.sc.b, 0x00030201, 0x3cd5b95e, 0x3cd5b95e )
  TEST_RR_DEST_BYPASS( 47, 0, pv.srl.sc.b, 0xc70600f8, 0xc70600f8, 0xc70600f8 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.srl.sc.b, 0x382b1708, 0xe2ae5f22, 0xe2ae5f22 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.srl.sc.b, 0x01010101, 0x91d8abf7, 0x91d8abf7 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.srl.sc.b, 0x1404121b, 0xa02295de, 0x5d015cfb )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.srl.sc.b, 0x437e7538, 0x86fdeb71, 0x9790b3a9 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.srl.sc.b, 0xeba22a63, 0xeba22a63, 0xb7acf9d8 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.srl.sc.b, 0x1f212c00, 0x7c84b100, 0xbc707de2 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.srl.sc.b, 0x9556de27, 0x9556de27, 0xbab801d8 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.srl.sc.b, 0x18378284, 0x18378284, 0x3eda9588 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.srl.sc.b, 0x43381710, 0x86702e20, 0x3ac1cf81 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.srl.sc.b, 0x01060407, 0x38de8dfc, 0x53c2fb35 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.srl.sc.b, 0xf283b2f6, 0xf283b2f6, 0x05316b40 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.srl.sc.b, 0x0a093e31, 0x2926f8c4, 0xa9dca07a )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.srl.sc.b, 0x7e9b4478, 0x7e9b4478, 0x94f0c9e8 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.srl.sc.b, 0x1d0c061f, 0xeb6637f8, 0xfe56001b )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.srl.sc.b, 0xc6de81db, 0xc6de81db, 0x4f519d68 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.srl.sc.b, 0x03060900, 0x3d619306, 0x0b8c2934 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.srl.sc.b, 0x09180a0c, 0x48c65460, 0xae35c593 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.srl.sc.b, 0x03020101, 0xd68f4468, 0x60e53bce )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.srl.sc.b, 0x02000001, 0xb6251e6a, 0xfc12bcee )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.srl.sc.b, 0x26160f3a, 0x98593de8, 0x10c2dac2 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.srl.sc.b, 0x00000000, 0x3a1284c4 )
  TEST_RR_ZEROSRC1( 51, pv.srl.sc.b, 0x00000000, 0xb7559475 )
  
  TEST_RR_ZEROSRC2( 52, pv.srl.sc.b, 0x7b63d664, 0x7b63d664 )
  TEST_RR_ZEROSRC2( 53, pv.srl.sc.b, 0x66d97d2f, 0x66d97d2f )
  
  TEST_RR_ZEROSRC12( 54, pv.srl.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.srl.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.srl.sc.b, 0x4c0315ac, 0x55b71253 )
  TEST_RR_ZERODEST( 57, pv.srl.sc.b, 0xbc82b452, 0x07aad7b5 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
