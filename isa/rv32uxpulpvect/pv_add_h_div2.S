# See LICENSE for license details.

#*****************************************************************************
# pv.add.h.div2
#-----------------------------------------------------------------------------
#
# Test pv.add.h.div2 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.add.h.div2, 0x00000000, 0x00000000, 0x00000000 )
  TEST_RR_OP( 3, pv.add.h.div2, 0x00000000, 0x80000000, 0x80000000 )
  TEST_RR_OP( 4, pv.add.h.div2, 0xffffffff, 0x80000000, 0x7fffffff )
  TEST_RR_OP( 5, pv.add.h.div2, 0xffffffff, 0x7fffffff, 0x7fffffff )
  TEST_RR_OP( 6, pv.add.h.div2, 0xffffffbd, 0xffffffbc, 0xffffffbf )
  TEST_RR_OP( 7, pv.add.h.div2, 0xfb341b99, 0x9f78b461, 0x56f182d1 )
  TEST_RR_OP( 8, pv.add.h.div2, 0x292c2f11, 0xa72fd7cf, 0xab298653 )
  TEST_RR_OP( 9, pv.add.h.div2, 0xc7cf0e29, 0x4b73bf71, 0x442b5ce1 )
  TEST_RR_OP( 10, pv.add.h.div2, 0x19510aef, 0x31cb905e, 0x00d88581 )
  TEST_RR_OP( 11, pv.add.h.div2, 0xcac32e83, 0x8e620c4e, 0x072450b9 )
  TEST_RR_OP( 12, pv.add.h.div2, 0x0bffdb5a, 0x9b24ca50, 0x7cdbec64 )
  TEST_RR_OP( 13, pv.add.h.div2, 0xe7a7089b, 0x09cfce27, 0xc580430f )
  TEST_RR_OP( 14, pv.add.h.div2, 0x0694f6d6, 0x54018c5b, 0xb9276151 )
  TEST_RR_OP( 15, pv.add.h.div2, 0x3c2a0ad7, 0x56df69ed, 0x2175abc1 )
  TEST_RR_OP( 16, pv.add.h.div2, 0xfbd61023, 0xde114032, 0x199ce014 )
  TEST_RR_OP( 17, pv.add.h.div2, 0xfdebd1b0, 0x6d8680b5, 0x8e5122ab )
  TEST_RR_OP( 18, pv.add.h.div2, 0xe936f6cc, 0x6c227d89, 0x664b7010 )
  TEST_RR_OP( 19, pv.add.h.div2, 0xc9da2b21, 0xf3a61837, 0xa00e3e0c )
  TEST_RR_OP( 20, pv.add.h.div2, 0xd15f28b7, 0x742707fa, 0x2e984974 )
  TEST_RR_OP( 21, pv.add.h.div2, 0x0c561af3, 0xeacaadf5, 0x2de287f2 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.add.h.div2, 0xc552fb9e, 0x2dc240d8, 0x5ce3b665 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.add.h.div2, 0xf3f1fb1a, 0xc92c5e0b, 0x1eb6982a )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.add.h.div2, 0x11c3d3a7, 0x308f81f5, 0xf2f7255a )
  TEST_RR_SRC2_EQ_DEST( 25, pv.add.h.div2, 0xcd301685, 0x28b70a0c, 0x71aa22fe )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.add.h.div2, 0xfc20d5ae, 0x7c20d5ae )
  TEST_RR_SRC12_EQ_DEST( 27, pv.add.h.div2, 0x0fb11e4b, 0x8fb19e4b )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.add.h.div2, 0xfab9004b, 0x7ab9004b, 0x7ab9004b )
  TEST_RR_DEST_BYPASS( 47, 1, pv.add.h.div2, 0x09511104, 0x89511104, 0x89511104 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.add.h.div2, 0xc83ce2b2, 0xc83ce2b2, 0xc83ce2b2 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.add.h.div2, 0x19bac854, 0x19bac854, 0x19bac854 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.add.h.div2, 0xd6561b72, 0x56569b72, 0x56569b72 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.add.h.div2, 0xe6bb12f3, 0x66bb12f3, 0x66bb12f3 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.add.h.div2, 0x2e42143c, 0x604b0818, 0xfc3a2061 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.add.h.div2, 0x12fd3366, 0xe9a7c4d4, 0x3c53a1f9 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.add.h.div2, 0xee5a24b3, 0xed1508c1, 0xefa040a6 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.add.h.div2, 0x135dc34c, 0xdeba1659, 0x4800703f )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.add.h.div2, 0xff71feb3, 0x70579b57, 0x8e8c6210 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.add.h.div2, 0xdf0dffbb, 0x7ab329d8, 0x4367d59e )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.add.h.div2, 0xdf27efc6, 0xde0d5f9f, 0xe0427fee )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.add.h.div2, 0x0f22ead2, 0xe5202edc, 0x3924a6c8 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.add.h.div2, 0xcea512db, 0x5759682b, 0x45f1bd8b )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.add.h.div2, 0xfd6d381c, 0xfbe2b68d, 0xfef8b9ab )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.add.h.div2, 0x2d540668, 0xccbc809b, 0x8ded8c36 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.add.h.div2, 0xd36ef2de, 0xd45fb5fe, 0xd27d2fbe )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.add.h.div2, 0xfdb7ee3a, 0x5de5f755, 0x9d89e51f )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.add.h.div2, 0xfdedfd5b, 0x593341d0, 0xa2a8b8e6 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.add.h.div2, 0xdb49ec44, 0x2dca9872, 0x88c94017 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.add.h.div2, 0xdc410d2b, 0xcdcf1b7e, 0xeab3fed9 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.add.h.div2, 0xed981563, 0x1cc374fd, 0xbe6eb5ca )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.add.h.div2, 0xd4f2e60d, 0x2c6cb1a2, 0x7d781a79 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.add.h.div2, 0xc9973acf, 0x932f759e )
  TEST_RR_ZEROSRC1( 53, pv.add.h.div2, 0x060926bb, 0x0c134d76 )
  
  TEST_RR_ZEROSRC2( 54, pv.add.h.div2, 0x28c93979, 0x519372f3 )
  TEST_RR_ZEROSRC2( 55, pv.add.h.div2, 0x3f6b2643, 0x7ed74c86 )
  
  TEST_RR_ZEROSRC12( 56, pv.add.h.div2, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.add.h.div2, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.add.h.div2, 0x9a9132f5, 0xbd9220ae )
  TEST_RR_ZERODEST( 59, pv.add.h.div2, 0x61703c4c, 0x11a5159b )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
