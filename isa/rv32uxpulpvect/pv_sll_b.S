# See LICENSE for license details.

#*****************************************************************************
# pv.sll.b
#-----------------------------------------------------------------------------
#
# Test pv.sll.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sll.b, 0x04082080, 0x81818181, 0xaabbcdff )
  TEST_RR_OP( 3, pv.sll.b, 0x04082081, 0x81818181, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.sll.b, 0x04082002, 0x81818181, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.sll.b, 0x97ea4084, 0x97eae161, 0x3878c66a )
  TEST_RR_OP( 6, pv.sll.b, 0x00dd2080, 0xe8dd206c, 0xb7002895 )
  TEST_RR_OP( 7, pv.sll.b, 0xd0002000, 0x1aa06964, 0x13d665be )
  TEST_RR_OP( 8, pv.sll.b, 0x8060e000, 0x81537ea6, 0x37855ce7 )
  TEST_RR_OP( 9, pv.sll.b, 0x00503044, 0xda2a8391, 0x673b54a2 )
  TEST_RR_OP( 10, pv.sll.b, 0x3c80e000, 0x9e2af8cc, 0x71dee20e )
  TEST_RR_OP( 11, pv.sll.b, 0x0034d640, 0x420d6b29, 0xf7bad1fe )
  TEST_RR_OP( 12, pv.sll.b, 0x0000f000, 0x30ba5f7c, 0xa7475407 )
  TEST_RR_OP( 13, pv.sll.b, 0xc040805e, 0xf7ddb7af, 0x7e162711 )
  TEST_RR_OP( 14, pv.sll.b, 0x80140085, 0xa7c5c285, 0x17e21f90 )
  TEST_RR_OP( 15, pv.sll.b, 0x00807460, 0xe8c0dd2b, 0x27d19275 )
  TEST_RR_OP( 16, pv.sll.b, 0x004030d0, 0xa005f3f4, 0xbc5ed43a )
  TEST_RR_OP( 17, pv.sll.b, 0xc0803ce8, 0x8c219e3a, 0xdc3fe922 )
  TEST_RR_OP( 18, pv.sll.b, 0x7800a000, 0x2f48cd02, 0xa3aded0f )
  TEST_RR_OP( 19, pv.sll.b, 0x2880682c, 0x4a0e682c, 0x22a63878 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sll.b, 0x34e04080, 0xcd6fa078, 0x7a952944 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sll.b, 0xf0d05880, 0x789dace6, 0x698c7196 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sll.b, 0x0000c040, 0xb0c0e7a1, 0x1ff35696 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sll.b, 0x80800080, 0x42e07407, 0xa6ba261f )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sll.b, 0x88e8a048, 0x88e80d52 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sll.b, 0x808018d8, 0x4fcf83d8 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sll.b, 0x0840a098, 0x42408533, 0x42408533 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sll.b, 0x6040a080, 0x60f485e6, 0x60f485e6 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sll.b, 0x80a818d8, 0xc66a181b, 0xc66a181b )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sll.b, 0x50808040, 0x50efef34, 0x50efef34 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sll.b, 0xa04080a0, 0xcd342e3d, 0xcd342e3d )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sll.b, 0x001858c0, 0x0043ab4c, 0x0043ab4c )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sll.b, 0xb00058ac, 0x2cc08bac, 0x6a9b5b88 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sll.b, 0x706030f8, 0xdc6ca6df, 0x7a8beb53 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sll.b, 0x0080b00c, 0x00376bc3, 0x137f3c6a )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sll.b, 0x2079800e, 0x32797d07, 0x14b037c1 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sll.b, 0x00fd608a, 0xecfd8cc5, 0x5fa09379 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sll.b, 0xe0a82080, 0xdfd4209f, 0x551128d7 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sll.b, 0x00a080c0, 0x40bde0cc, 0xbb2d528c )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sll.b, 0x88c04080, 0xc4abb5c6, 0xe9be6e4e )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sll.b, 0xb0e02040, 0x569fc45d, 0x43bd435e )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sll.b, 0x9cd480e0, 0x4eea8b57, 0x7181afad )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sll.b, 0x7ce0e0d6, 0xdf779ed6, 0xa27dfcc8 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sll.b, 0xb0c030c0, 0x7b5e03e0, 0x7cd504c9 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sll.b, 0x00c63850, 0xdae34e94, 0xc769527a )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sll.b, 0x80100000, 0x42043058, 0xd60ab415 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sll.b, 0x303411fa, 0xe69a117d, 0x336950c1 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sll.b, 0xd080a074, 0x5dcc5add, 0xc44de4a2 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sll.b, 0xf880fcc0, 0xdfe93f0c, 0x0befaa7c )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sll.b, 0x60c00064, 0x0bb74699, 0x75268f82 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sll.b, 0x00000000, 0x209cdd20 )
  TEST_RR_ZEROSRC1( 51, pv.sll.b, 0x00000000, 0xd8843627 )
  
  TEST_RR_ZEROSRC2( 52, pv.sll.b, 0xff19aa8e, 0xff19aa8e )
  TEST_RR_ZEROSRC2( 53, pv.sll.b, 0x59f7ffeb, 0x59f7ffeb )
  
  TEST_RR_ZEROSRC12( 54, pv.sll.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sll.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sll.b, 0x303601e4, 0xeb086e73 )
  TEST_RR_ZERODEST( 57, pv.sll.b, 0xfc480b0a, 0x0c47d4f5 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
